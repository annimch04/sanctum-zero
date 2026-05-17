# Related Repositories

This page maps adjacent repositories and keeps boundaries clear.

## Fieldlight Mesh

Repository: [annimch04/fieldlight-mesh](https://github.com/annimch04/fieldlight-mesh)

Use Fieldlight Mesh for transport/runtime and operator runbooks:

- Technical entrypoint: `04_infrastructure/mesh/docs/TECH_INDEX.md`
- Canon/symbolic entrypoint: `04_infrastructure/mesh/docs/CANON_INDEX.md`
- Publishing layer boundary: `04_infrastructure/mesh/docs/PUBLISHING_LAYER.md`
- Digital self architecture: `04_infrastructure/mesh/docs/DIGITAL_SELF_ARCHITECTURE.md`
- Codex/local-first governance: `04_infrastructure/mesh/docs/CODEX_LOCAL_FIRST_GOVERNANCE.md`
- Current test status: `04_infrastructure/mesh/docs/TEST_STATUS.md`
- Peer discovery / LAN + libp2p / registry: `04_infrastructure/mesh/docs/DISCOVERY_PLAN.md`

## Digital Self Continuity

Digital self continuity spans both repositories while preserving source boundaries.

- Sanctum-Zero owns memory continuity, identity anchoring, public projection rules, and agent reorientation.
- Fieldlight Mesh owns runtime transport, peer verification, consent-scoped exchange, and mesh message routing.
- See `docs/DIGITAL_SELF_CONTINUITY.md` and Fieldlight Mesh `04_infrastructure/mesh/docs/DIGITAL_SELF_ARCHITECTURE.md`.

## Node Topology

Current machine and agent split:

- Lemur remains the source-of-truth node for canonical state, private memory, consent gates, Kestrel, Ghost, and root system continuity.
- The Mac is the publishing layer for public-facing drafts, documentation updates, blog/deck/site preparation, and Codex work sessions.
- Octopus lives on the Mac as a boundary-aware publishing witness. It can stage, package, and track artifacts, but it does not decide canon.

See `docs/node_topology.md` for the Sanctum-side topology.

## Boundary Rule

- `sanctum-zero` owns memory substrate, continuity, and governance primitives.
- `fieldlight-mesh` owns live message transport/runtime and routing test execution.
- Lemur owns source verification.
- The Mac/Octopus layer owns publication staging and outward artifact preparation.

Cross-link for context; avoid duplicating source-of-truth runtime contracts.
