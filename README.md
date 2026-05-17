# YXT-Godel: Gödel's Incompleteness Theorems Reconstructed in the Yuanxian (YXT) Framework

[![Lean 4](https://img.shields.io/badge/Lean%204-4.x-blue.svg)](https://lean-lang.org/)
[![Zenodo](https://zenodo.org/badge/DOI/10.5281/zenodo.20249448.svg)](https://doi.org/10.5281/zenodo.20249448)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Generative Completeness and Logical Boundary State Theory** — A formal reconstruction of Gödel's incompleteness theorems under the **True Circular Self-Consistency (TCSC)** axiom of Yuanxian Theory (YXT).

This repository contains the complete Lean 4 formalization accompanying the paper:

> **"YXT Framework Reconstruction of Gödel's Incompleteness Theorems: Generative Completeness and Logical Boundary State Theory"**

**Zenodo DOI**: [10.5281/zenodo.20249448](https://doi.org/10.5281/zenodo.20249448)

---

## Core Contributions

- Introduces **Boundary State** as a third modal truth value (True / False / Boundary).
- Proves that Gödel-type self-referential propositions $\mathcal{G}_\Psi$ naturally converge to a **stable Boundary State** in $T^{64}$ topology, rather than constituting a paradox.
- Establishes **Generative Completeness**: Every proposition in a TCSC system is assigned exactly one of {True, False, Boundary}.
- Full machine-verified formalization in **Lean 4**.

---

## Quick Start

```bash
# Install Lean 4 via elan
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh

# Clone repository
git clone https://github.com/YuanXian-Theory/YXT-Godel.git
cd YXT-Godel/Lean

# Build and verify
lake exe cache get
lake build
lake exe run
