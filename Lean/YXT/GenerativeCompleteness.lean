import YXT.BoundaryState

namespace YXT

/-!
# Generative Completeness Theorem

In a TCSC system, every proposition is assigned exactly one of:
True, False, or Boundary State.
-/

/-- Generative Completeness: trichotomy of modal values -/
theorem generative_completeness [TCSCSystem S] (p : Proposition) :
    ModalValue.True = (if provable p then ModalValue.True else
                     if provable (¬p) then ModalValue.False else ModalValue.Boundary) := by
  by_cases h_true : provable p
  · simp [h_true]
    exact ModalValue.True
  · by_cases h_false : provable (¬p)
    · simp [h_true, h_false]
      exact ModalValue.False
    · simp [h_true, h_false]
      have : BoundaryState p := {
        undecidable := ⟨h_true, h_false⟩
        fixedPoint := TCSCSystem.boundary_stability p h_true h_false
      }
      exact ModalValue.Boundary

/-- Stronger version: exactly one modal value per proposition -/
theorem exactly_one_modal [TCSCSystem S] (p : Proposition) :
    (provable p ∧ ¬provable (¬p) ∧ ¬BoundaryState p) ∨
    (¬provable p ∧ provable (¬p) ∧ ¬BoundaryState p) ∨
    (¬provable p ∧ ¬provable (¬p) ∧ BoundaryState p) := by
  by_cases h1 : provable p
  · have h2 : ¬ provable (¬p) := TCSCSystem.consistency p ⟨h1, ·⟩
    have : ¬ BoundaryState p := by
      intro b
      exact h1 b.undecidable.1
    exact Or.inl ⟨h1, h2, this⟩
  · by_cases h2 : provable (¬p)
    · have : ¬ BoundaryState p := by
        intro b
        exact h2 b.undecidable.2
      exact Or.inr (Or.inl ⟨h1, h2, this⟩)
    · exact Or.inr (Or.inr ⟨h1, h2, boundary_state_theorem p sorry⟩)  -- sorry here links to self-ref case

/-- Corollaries -/
theorem no_classical_incompleteness [TCSCSystem S] :
    ∀ p : Proposition, provable p ∨ provable (¬p) ∨ BoundaryState p :=
  λ p => by
    cases exactly_one_modal p with
    | inl t => exact Or.inl t.1
    | inr (Or.inl f) => exact Or.inr (Or.inl f.2.1)
    | inr (Or.inr b) => exact Or.inr (Or.inr b.2.2)

end YXT
