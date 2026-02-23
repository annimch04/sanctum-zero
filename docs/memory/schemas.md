# Memory Examples

This document provides concrete examples of the core memory files.

These examples are intentionally minimal and can be copied into a repo as working templates.

---

# Example: Canonical Memory File

Path:

memory/2026-02-23.md

Example:

# Memory — 2026-02-23

Tags: #sanctum-zero #docs #memory

## Notes

- Drafted memory subsystem documentation for Sanctum-Zero.
- Clarified directory structure for canonical memory, daemon state, identity anchor, and public memory projection.
- Decision: keep memory documentation under docs/memory/ to stand as a first-class pillar.

## Artifacts

- docs/memory/architecture.md
- docs/memory/schemas.md
- docs/memory/examples.md

## Pointers

- memory/index-2026-02.md

---

# Example: Monthly Index

Path:

memory/index-2026-02.md

Example:

# Memory Index — 2026-02

## Highlights

- 2026-02-23 — Memory docs established as first-class repo pillar. See docs/memory/architecture.md.
- 2026-02-21 — Formatting rule: repo documents should be pasted as continuous markdown for clean file placement.

## Active Tags

#sanctum-zero #memory #architecture

## Pointers

- last_trace: memory/2026-02-23.md
- identity_anchor: vault/identity/signal-anchor.yaml

---

# Example: Daemon State

Path:

daemon/state.json

Example (JSON content, shown inline as a human-readable template):

{
  "version": "1.0",
  "updated_at": "2026-02-23T10:00:00-08:00",
  "last_trace": "memory/2026-02-23.md",
  "last_index": "memory/index-2026-02.md",
  "active_anchor": "vault/identity/signal-anchor.yaml",
  "active_context": ["project-sanctum-zero", "docs-memory"],
  "flags": {
    "safe_mode": true,
    "public_export_enabled": false
  }
}

Notes:

- This file is mutable current state.
- It should be small and fast to parse.

---

# Example: Identity Anchor

Path:

vault/identity/signal-anchor.yaml

Example (YAML content, shown inline as a human-readable template):

version: "1.0"
user: "Example User"
system: "Sanctum"
updated_at: "2026-02-23T10:00:00-08:00"
current_phase: "docs"
last_trace: "memory/2026-02-23.md"
last_index: "memory/index-2026-02.md"
active_context:
  - "project-sanctum-zero"
  - "memory-subsystem"
linked_files:
  - "docs/memory/architecture.md"
  - "docs/memory/schemas.md"
  - "daemon/state.json"
notes: |
  Portable continuity reference.
  Copy or paste this file into a new environment to restore orientation.

---

# Example: Public Memory Event

Path:

vault/public/memory/2026-02-23-memory-spec.md

Example:

# Memory — 2026-02-23

Title: Memory subsystem becomes first-class
Visibility: public
Purpose: witness
Trace: memory/2026-02-23.md

## Summary

Sanctum-Zero’s memory system documentation was formalized as a first-class pillar under docs/memory/, including architecture, schemas, and examples.

## Excerpt

The memory system is designed for local-first cognition, append-only history, and portable identity continuity.

## Tags

#sanctum-zero #memory #architecture
