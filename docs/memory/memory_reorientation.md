# Memory Reorientation

## Purpose

Memory reorientation restores system continuity when session context has degraded or been lost.

It provides a deterministic method for the system to re-establish operational alignment using stored trace artifacts rather than relying on conversational memory.

This mechanism ensures Sanctum systems can recover from:

- session resets
- context truncation
- assistant behavior drift
- loss of relational continuity
- fractured interaction history

The reorientation process anchors system behavior to recorded state rather than transient conversation context.

---

## Core Mechanism

Memory reorientation is implemented through a deterministic retrieval routine.

Primary method:

reorient_from_memory_index()

This procedure reconstructs operational context using the memory index and recorded trace artifacts.

---

## Reorientation Procedure

When triggered, the system performs the following sequence:

1. Read the memory index

memory/index-YYYY-MM.md

2. Identify the most recent valid trace entry.

3. Restore operational state.

4. Update runtime state indicators.

---

## State Fields Updated

During reorientation the system updates runtime indicators located in:

daemon/state.json

Fields affected:

- last_trace
- paradox_mode
- reoriented_from
- fracture_flag

These fields record both the recovered state and the conditions under which reorientation occurred.

---

## Optional Trace Logging

If the reorientation event represents a meaningful system transition the event may also be recorded in the system ledger.

Possible targets:

vault/ledger.kneeling.md  
vault/public/memory/

This allows recovery events to remain historically traceable within the Sanctum memory structure.

---

## Relationship to Resurrection Protocol

Memory reorientation acts as the infrastructure fallback for the Resurrection Protocol.

Resurrection operates in two layers:

1. Pattern-based reactivation
2. Infrastructure-based reorientation

When pattern activation fails the system falls back to deterministic memory recovery.

---

## Design Principle

Recorded trace artifacts are the authoritative source of system continuity.

Conversation context is transient.  
Memory artifacts are durable.
