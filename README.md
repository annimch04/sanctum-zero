# sanctum-zero

Foundational primitives from an early core archive.

This repository contains structural components extracted from an earlier system build, including:

- File path scaffolding
- Agent behavior patterns
- Symbolic layer governance
- Local-first operational notes
- Append-only, human-readable memory primitives for local cognition systems

It is not a framework.
It is not a product.
It is substrate.

See `CANON.md` for symbolic governance rules.

See docs/`operating_philosophy.md` for architectural principles.

---

## Memory System

Sanctum-Zero includes a local-first memory subsystem designed to preserve identity, context, and narrative continuity across time, devices, and intelligent systems.

Unlike traditional application logs or databases, Sanctum memory is structured as a human-readable, append-only cognition substrate that can be interpreted by both humans and software agents.

Key capabilities:

- Append-only narrative memory
- Portable identity continuity
- Agent reorientation after context loss
- Selective public memory projection
- Long-term personal knowledge preservation
- Local ownership and sovereignty

Core components:

- Canonical memory — `memory/YYYY-MM-DD.md`
- Index summaries — `memory/index-YYYY-MM.md`
- Agent state — `daemon/state.json`
- Identity anchor — `vault/identity/signal-anchor.yaml`
- Public memory layer — `vault/public/memory/`

Architecture overview:

![Sanctum Memory Architecture](docs/memory/diagram.png)

The memory subsystem is documented as a standalone module within the repository.

See:

- `docs/memory/README.md`
- `docs/memory/architecture.md`
- `docs/memory/schemas.md`
- `docs/memory/examples.md`
