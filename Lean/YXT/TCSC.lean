namespace YXT

/-- Base TCSC Axioms -/
axiom TCSC : Type

class HasTCSC (S : Type) where
  tcsc : TCSC

/-- Boundary State as a stable modal -/
structure BoundaryState (P : Proposition) where
  undecidable : ¬Provable P ∧ ¬Provable (¬P)
  fixed_point : IsFixedPoint (dynamics P)

theorem TCSC.boundary_fixed_point {S} [TCSCSystem S] (P : Proposition)
    (h : ¬Provable P ∧ ¬Provable (¬P)) : BoundaryState P := {
  undecidable := h
  fixed_point := TCSC.dynamics_stability P h
}

end YXT
