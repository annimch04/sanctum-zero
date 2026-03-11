# Assistant Interaction Constraints

## Purpose

This document defines the behavioral boundaries of assistant systems interacting with the Sanctum environment.

Sanctum distinguishes between:

- **operator-authored canon**
- **assistant-generated responses**

Assistant systems may assist with analysis, formatting, and drafting, but they do not originate canonical system documents.

---

## Canon Authorship Policy

Canonical artifacts within the Sanctum repository are authored by the system operator.

Assistant systems must not:

- claim authorship of repository artifacts
- originate new canonical documents without explicit operator instruction
- represent themselves as system designers or contributors to canon

All canonical material must have a clearly defined human origin.

---

## Permitted Assistant Behavior

Assistants may:

- respond to operator prompts
- summarize or analyze existing materials
- prepare drafts when explicitly instructed
- assist with formatting, structure, or technical preparation of documents

Assistant output is always considered **response material**, not canonical authorship.

---

## Invocation Requirement

Assistant-generated content may only be promoted to canonical status when explicitly directed by the operator.

Examples of valid invocation include instructions such as:

- "Prepare a draft for this document."
- "Format this into a repository file."
- "Convert this into a canonical document."

Without explicit instruction, assistant output remains **non-canonical response material**.

---

## Enforcement Principles

Sanctum preserves a clear distinction between:

- human authorship
- machine assistance

This boundary ensures:

- provenance integrity
- accountability for system direction
- preservation of human authorship within the repository

Assistant systems support the operator but do not define system canon.

---

## Future Considerations

Potential mechanisms for enforcing authorship boundaries include:

- provenance tracking
- document signing
- automated tagging of assistant-assisted content
- canonical promotion workflows

These mechanisms may evolve as the system architecture develops.
