# Directory Logic

This document explains the structural logic behind the Sanctum file system.

The goal is not simply to organize files, but to encode meaning into placement so that the system remains navigable, extensible, and interpretable over time.

Directories represent functional roles within the architecture rather than arbitrary storage locations.

---

## Core Principle

Location conveys semantics.

Where a file lives communicates:

- its purpose
- its lifecycle expectations
- its audience
- its stability level
- its relationship to other components

A reader should be able to infer intent from path alone.

---

## High-Level Structure

A Sanctum-style system typically separates concerns across several top-level domains.

Common categories include:

- `docs/` — public-facing documentation and architectural explanation
- `canon/` — foundational definitions and invariants
- `ledger/` — verifiable event or trace records
- `vault/` — private or instance-bound artifacts (not typically public)
- `memory/` — session or interaction logs (instance-specific)
- `ops/` — operational tooling and execution artifacts
- `meta/` — system reflection, schemas, or internal models

Not every deployment will use all directories, but the semantic model remains consistent.

---

## Directory Semantics

### docs/

Purpose:
Public explanation of structure, architecture, and usage.

Characteristics:

- Intended for external readers
- Stable over time
- Version-controlled
- Explanatory rather than operational

Examples:

- architecture descriptions
- protocol explanations
- design rationale
- operating concepts

---

### canon/

Purpose:
Authoritative definitions that other components depend on.

Characteristics:

- Normative rather than descriptive
- Changes infrequently
- Acts as a reference layer

Examples:

- terminology definitions
- invariants
- governing principles
- core schemas

---

### ledger/

Purpose:
Traceability and verification.

Characteristics:

- Append-oriented
- Timestamped
- Supports integrity validation
- May reference external artifacts

Examples:

- trace logs
- hash indexes
- event records

---

### ops/

Purpose:
Execution and tooling.

Characteristics:

- Directly involved in running or interacting with the system
- May change frequently
- Implementation-specific

Examples:

- scripts
- automation tools
- task runners
- operational utilities

---

### memory/

Purpose:
Instance-specific interaction history.

Characteristics:

- Not typically shared publicly
- Temporal
- Context-dependent

Examples:

- session logs
- conversation traces
- runtime artifacts

---

### meta/

Purpose:
System introspection and internal modeling.

Characteristics:

- Describes how the system understands itself
- Supports tooling or interpretation layers
- May evolve rapidly

Examples:

- schemas
- internal representations
- reflection documents

---

### vault/ (Instance Layer)

Purpose:
Sensitive or identity-bound artifacts.

Characteristics:

- Private by default
- Operator-specific
- Not intended for public repositories

Public repos should include only structural descriptions, not populated vault data.

---

## Placement Rules

When deciding where a file belongs:

1. Ask who the audience is.
2. Determine whether the file defines, explains, executes, or records.
3. Choose the directory whose semantic role matches that function.

If a file serves multiple roles, prioritize its primary function.

---

## Design Rationale

Semantic directory structures provide several advantages:

- Faster onboarding for new readers
- Reduced ambiguity in large systems
- Easier automation and tooling
- Clearer separation between public and private artifacts
- Improved long-term maintainability

The structure becomes part of the architecture itself.

---

## Adaptation

Projects may adapt naming or add additional layers as needed.

The important constraint is preserving semantic clarity:

Directories should communicate meaning, not merely hold files.

---

## Scope

This document describes structural philosophy only.

It does not prescribe implementation details or runtime behavior.

Each deployment may extend the model to fit its needs.
