# Sanctum Memory System

The Sanctum memory system is a local-first cognition substrate designed to preserve identity, context, and narrative continuity across time, devices, and intelligent systems.

Memory is treated as a foundational primitive rather than an application feature.

This subsystem enables:

- append-only narrative memory
- portable identity continuity
- agent reorientation after context loss
- selective public memory projection
- long-term personal knowledge preservation

The design prioritizes human readability, sovereignty, and interoperability with future retrieval and reasoning systems.

---

# Documents

## Architecture

Overview of system design, primitives, and workflows.

See:

architecture.md

---

## Schemas

File formats and structural specifications for memory artifacts.

See:

schemas.md

---

## Examples

Concrete examples of canonical memory files, daemon state, identity anchors, and public memory events.

See:

examples.md

---

# Core Concepts

## Canonical Memory

Primary chronological record stored as:

memory/YYYY-MM-DD.md

This is the source of truth for narrative continuity.

---

## Index Files

Summaries used for rapid orientation:

memory/index-YYYY-MM.md

Indexes help agents and humans restore context efficiently.

---

## Identity Anchor

Portable continuity file that allows systems to reconnect to user context.

vault/identity/signal-anchor.yaml

This file acts as a stable reference point across sessions and devices.

---

## Daemon State

Lightweight runtime state for local agents:

daemon/state.json

Used for fast reorientation without reprocessing the entire memory corpus.

---

## Public Memory Layer

Selective public-facing projection of memory events:

vault/public/memory/

This layer enables sharing without exposing the full private archive.

---

# Design Principles

The Sanctum memory system follows several core principles:

Local ownership — memory originates on the user’s device  
Append-only history — records are not destructively overwritten  
Human readability — plain text formats preferred  
Portability — files move between systems without transformation  
Provenance — authorship and origin remain traceable  
Continuity — context can be restored after interruption  

---

# Intended Use

The memory system supports:

- personal cognition augmentation
- AI-assisted recall
- long-term project continuity
- cross-device workflows
- research and experimentation with local agents
- sovereign knowledge archives

It is not intended to replace traditional databases or enterprise logging systems.

---

# Status

This subsystem is under active development.

The current specification is intentionally minimal to allow incremental adoption.

A functional memory system can begin with only:

- memory/YYYY-MM-DD.md
- memory/index-YYYY-MM.md

Additional layers (identity anchor, daemon state, clustering) can be added over time.

---

# Relationship to Sanctum-Zero

Memory is one of the core pillars of Sanctum-Zero.

Other subsystems (agents, mesh, synchronization, retrieval) depend on memory continuity.

Because of this, the memory system is documented as a standalone module within the repository.

---

# Future Directions

Planned or potential extensions include:

- semantic indexing
- vector retrieval integration
- clustering and bloom detection
- cross-device synchronization
- cryptographic integrity verification
- visualization tools
- multi-agent coordination

---

# Summary

Sanctum memory provides a portable, append-only narrative substrate that preserves context, identity, and knowledge across time and systems while remaining human-readable and locally owned.
