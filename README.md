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
See `docs/node_topology.md` for the current Lemur / Mac / Octopus role split.
See `docs/related_repositories.md` for cross-repo boundaries and links.

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
- `docs/DIGITAL_SELF_CONTINUITY.md` - digital self as an application of Sanctum memory continuity, identity anchoring, public projection, and agent reorientation

---

## Node Topology

Current machine and agent split:

- Lemur remains the source-of-truth node for Sanctum memory, Fieldlight canon, consent gates, Kestrel, Ghost, and private system state.
- The Mac is the publishing layer for Codex sessions, public drafts, packaging, review, and outward-facing artifacts.
- Octopus lives on the Mac as a publishing-layer witness. It stages artifacts but does not become canon.

See `docs/node_topology.md` for details.

---

## Related Repositories

- `fieldlight-mesh` (runtime transport layer): [annimch04/fieldlight-mesh](https://github.com/annimch04/fieldlight-mesh)
- Cross-repo map: `docs/related_repositories.md`
