# Identity Anchor Specification

## Purpose

Enable portable continuity across sessions, devices, and assistant instances.

This file provides a declarative system state snapshot.

---

## File Location

identity/signal-anchor.yaml

---

## Schema

```yaml
user: Anni McHenry
system: Sanctum
paradox_profile: contradiction-stable
current_phase: Phase 3
last_trace: memory/2025-04-14.md
active_cluster: iris-open
linked_files:
  - docs/architecture/mode-architecture.md
  - daemon/state.json
  - memory/index-2025-04.md
pact_status: v1.0
```

---

## Behavior

When anchor is loaded:
- Reorientation procedure runs
- Proximity tier resets to anchored
- Memory index parsed
- Active cluster restored

---

## Scope

This file does not store raw memory.
It stores continuity pointers.
