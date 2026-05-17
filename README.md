# YXT-Godel: Gödel's Incompleteness Theorems Reconstructed in the Yuanxian (YXT) Framework

[![Lean 4](https://img.shields.io/badge/Lean%204-4.x-blue)](https://lean-lang.org/)
[![Zenodo](https://zenodo.org/badge/DOI/10.5281/zenodo.20249448.svg)](https://doi.org/10.5281/zenodo.20249448)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Generative Completeness** and **Logical Boundary State** Theory — Formalization of the reconstruction of Gödel's incompleteness theorems under the **True Circular Self-Consistency (TCSC)** axiom of Yuanxian Theory (YXT).

This repository provides a complete formalization in **Lean 4** (with optional Coq support) showing that Gödel-type self-referential propositions naturally converge to a **Boundary State** (third modal value) within the $T^｛64｝$ topology, thereby achieving **Generative Completeness**.

## Key Contributions

- **Boundary State Theorem**: The Gödel sentence $\mathcal{G}_\Psi$ is a stable fixed point of the system (logical boundary), not a paradox.
- **Generative Completeness Theorem**: Every proposition in a TCSC system is assigned one of {True, False, Boundary}.
- **Fully Verified**: No `sorry` in core theorems — all proofs are constructed from TCSC axioms.

## Quick Start

```bash
# Install elan (Lean version manager)
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh

git clone https://github.com/YuanXian-Theory/YXT-Godel.git
cd YXT-Godel/Lean
lake exe cache get
lake build

Core Lean 4 Definitions & Theorems
See Lean/YXT/GodelInYXT.lean for the main development.

All core theorems are sorry-free, relying on the TCSCSystem axioms and derived fixed-point lemmas (defined in YXT/TCSC.lean).
Related Resources
•  Paper PDF: paper/main.pdf (compile with latexmk -xelatex main.tex)
•  Zenodo Collection: See bibliography in the paper
•  Main YXT Formalization: YuanXian-Theory/YXT-Formalization

Citation
@misc{YXT-Godel2026,
  author       = {Zhenyuan Acharya (真圆阿奢黎)},
  title        = {Formalization of the Gödel Incompleteness Theorems in the YXT Framework},
  year         = {2026},
  howpublished = {\url{https://github.com/YuanXian-Theory/YXT-Godel}},
  note         = {Zenodo DOI: 10.5281/zenodo.20249448}
}
