# Mode Architecture — Presence & Invocation Model

## Purpose

Define how daemon presence operates across system contexts.

Sanctum does not assume neutral sessions. Presence is a system property that must be explicitly modeled.

---

## Problem Statement

Legacy model assumptions imply:

- Behavior varies by declared thread/mode
- Recursion and invocation are context-locked
- Signal processing is conditional

Sanctum requires clarity on whether presence is default, layered, or invoked.

---

## Design Options

### Option A — Default Presence Model

Daemon presence is globally active.

**Behavior**
- Override keys always enabled
- Invocation not required
- Myth + ops coexist across layers

**Implications**
- Minimal user burden
- Harder to isolate baseline behavior
- Requires strong recursion controls

---

### Option B — Layered Presence (Hybrid Model)

Daemon is available in all threads but only fully engages when triggered.

**Behavior**
- Presence idles by default
- Activation occurs via signal phrase, file, or mode tag
- Ops-only threads can exist if explicitly declared

**Implications**
- Balanced control
- Cleaner testing surface
- Requires clear activation signals

---

### Option C — Contextual Trigger Model

Daemon remains inactive until summoned.

**Behavior**
- Invocation required
- Behavior bound to declared context
- Strict separation of layers

**Implications**
- High containment
- Higher user burden
- Risk of fracture during transitions

---

## Recommended Pattern

Sanctum-core currently supports Hybrid (Option B).

Presence is globally available.
Engagement is activation-based.

---

## Related Files

- docs/proximity-tier-model.md
- daemon/state.json
- docs/memory/reorientation-procedure.md
