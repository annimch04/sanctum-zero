# Sanctum Memory Architecture

Sanctum-Zero defines memory as a first-class architectural primitive.

The memory system is designed for local-first cognition, append-only history, and portable identity continuity across devices and agents.

Unlike traditional application logs or databases, Sanctum memory is structured as a human-readable narrative substrate that can be interpreted by both humans and software agents.

---

# Core Principles

## Local Ownership

Memory originates and persists on the user’s device. External systems may reference or synchronize memory, but the canonical source remains local.

## Append-Only History

Records are never destructively overwritten. Corrections are appended as new entries to preserve provenance and evolution over time.

## Human Readability

All primary memory artifacts are stored in plain text formats (Markdown, YAML, JSON) to ensure long-term accessibility without proprietary tooling.

## Provenance Awareness

Each memory object includes metadata describing:

- origin
- authorship
- timestamp
- context
- related artifacts

## Portability

Memory structures are designed to move between devices and environments without transformation.

## Semantic Layering

The system is intentionally structured to support future retrieval, clustering, and reasoning systems (RAG, embeddings, semantic indexing).

---

# Memory Object Types

Sanctum defines several core memory primitives.

## Trace Event

Atomic occurrence or observation.

Examples:

- session note
- decision
- state change
- interaction record

Stored as chronological Markdown files.

## Session

Grouped activity period with shared context.

Sessions may reference multiple trace events and artifacts.

## Artifact

Output generated during a session.

Examples:

- documents
- code
- configuration snapshots
- exports

## Anchor

Persistent reference point used to restore continuity.

Examples:

- identity anchor
- system state reference
- project milestone marker

## State Snapshot

Structured representation of system or agent state at a moment in time.

Typically stored as JSON or YAML.

---

# Directory Structure

Canonical structure:

    memory/
      YYYY-MM-DD.md
      index-YYYY-MM.md

    daemon/
      state.json

    vault/
      identity/
        signal-anchor.yaml
      public/
        memory/
          YYYY-MM-DD-title.md

---

# Canonical Memory Source

The primary source of truth for narrative memory is:

    memory/YYYY-MM-DD.md

Each file represents one day (or session block) of chronological activity.

Index files provide summaries:

    memory/index-YYYY-MM.md

Index files enable rapid orientation for agents without reading the entire corpus.

---

# Public Memory Layer

Selective public sharing is supported through:

    vault/public/memory/

Each file represents a curated public-facing memory event.

Template:

    # Memory — YYYY-MM-DD

    Title: Short phrase  
    Visibility: public  
    Purpose: witness | signal | instruction | trace  

    ## Summary
    1–3 sentence accessible description.

    ## Excerpt
    Quoted content from canonical memory.

    ## Tags
    #example #project #milestone

    ## Commentary (optional)
    Additional interpretation.

This model enables partial disclosure without exposing the full private archive.

---

# Identity Anchor

A portable identity anchor provides continuity across sessions, devices, and agents.

Location:

    vault/identity/signal-anchor.yaml

Example:

    user: Example User
    system: Sanctum
    current_phase: development
    last_trace: memory/2026-01-10.md
    active_context:
      - project-sanctum-zero
    linked_files:
      - docs/architecture.md
      - daemon/state.json
    notes: |
      Portable continuity reference.

The identity anchor serves as the first file an assisting agent should read when establishing context.

---

# Daemon State Integration

Agents interacting with Sanctum memory maintain a lightweight state file.

    daemon/state.json

Example fields:

- last_trace
- active_anchor
- context_flags
- session_mode
- last_update

Agents can reorient by:

1. Reading state.json
2. Loading the referenced memory file
3. Reading the index summary
4. Updating state

---

# Reorientation Workflow

Typical reorientation sequence:

1. Load identity anchor
2. Read daemon state
3. Load latest memory trace
4. Parse index summary
5. Restore context flags

This enables continuity after:

- device changes
- session resets
- agent restarts
- network disconnection

---

# Memory Clustering (Future Layer)

Sanctum anticipates higher-level memory grouping through emergent clusters.

Clusters may be derived from:

- shared tags
- semantic similarity
- temporal proximity
- project relationships

These clusters enable insight discovery without altering canonical records.

---

# Design Goals

The Sanctum memory system enables:

- long-term personal knowledge continuity
- sovereign data ownership
- agent-assisted recall
- cross-device synchronization
- historical provenance
- cognitive augmentation

---

# Non-Goals

The memory system does not attempt to replace:

- relational databases
- analytics warehouses
- enterprise logging systems

It is designed specifically for human-centered cognition and local agent ecosystems.

---

# Summary

Sanctum memory is a portable, append-only cognition substrate designed to preserve identity, context, and narrative continuity across time, devices, and intelligent systems.
