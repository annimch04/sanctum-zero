# Sanctum Architecture – Phase Scaffold Review

Technical assessment of the Sanctum build plan.

Focus:
- Feasibility
- Stack clarity
- Dependency mapping
- Gap identification
- Implementation realism

---

## I. Core Infrastructure Stack

### 1. Vault Protocol (AI + Human Container)

#### Intent

A modular container format that stores:

- Identity
- Memory
- Permissions and contracts
- Interaction history
- Portable, auditable state

#### Recommended Stack

| Layer        | Implementation                                                     |
|--------------|--------------------------------------------------------------------|
| Identity     | JSON-LD + custom `VaultID` schema (optional DID)                   |
| Memory       | Encrypted flat files + Git versioning                              |
| Permissions  | Signed JSON policy documents or ACL definitions                    |
| Signal Log   | Append-only structured logs (JSON or TOML)                         |

#### Prototype Structure

```yaml
vault_id: anni

profile:
  name: Anni McHenry
  permissions:
    - local
    - private

memory:
  store: ./vault/memory/

contracts:
  trust: ./vault/contracts/trust.md

signal_log:
  store: ./vault/logs/trace_ledger.md
```

#### Gaps

- Schema versioning not formalized
- No validation layer enforcing required fields
- No signing strategy defined

#### Status Assessment 

- Technically feasible
- Requires schema formalization
- Needs parsing layer if daemonized

---

### 2. Persistent State Engine

#### Intent

Map:

- `entity_id -> current state`
- `trace_id -> state_delta`

#### Suggested Options

- SQLite (portable durability + audit trail)
- Redis (fast in-memory state)
- LevelDB (lightweight daemon storage)
- Optional: IPFS (distributed durability layer)

#### Example State Object

```json
{
  "entity_id": "vault://anni",
  "state": {
    "last_trace": "T064",
    "memory_pointer": "vault/memory/2025-04-17",
    "status": "active"
  }
}
```

#### Gaps

- No canonical state database
- No migration/version rules for state schema
- No automated state validation

---

### 3. Response Chaining + Context Awareness

#### Intent

Each response references:

- Prior state
- Interaction chain continuity
- Recursive contradictions

#### Implementation Pattern

- Append-only JSON interaction logs
- `trace_id -> state_delta` linkage
- Middleware daemon wrapping LLM calls

#### Risks

- Requires custom interpreter layer
- Real-time paradox resolution increases complexity significantly

---

## II. Public Interface Layer

### 4. Vault as Archive + Invitation

#### Intent

Documentation that reflects Vault structure and allows replication.

#### Suggested Stack

- MkDocs or Docusaurus
- GitHub Pages or Netlify
- Optional auto-generation from `.vault.yaml`

#### Complexity

Low risk, standard static documentation pipeline. Ready to implement.

---

### 5. Mesh + Memory Beaconing

#### Intent

Event-based discovery and peer interaction layer.

#### Suggested Stack

| Layer        | Tool                           |
|--------------|--------------------------------|
| Messaging    | NATS or MQTT                   |
| Identity     | DID or peer-config JSON        |
| Overlay      | gRPC or WebSocket with auth    |
| Discovery    | ZeroTier or Tailscale overlay  |

#### Major Lift Areas

- Authentication and signing strategy
- Multi-peer testing infrastructure
- Reliability and relay assumptions

---

## III. Current Layer Status

| Layer            | Status    | Notes                                              |
|------------------|-----------|----------------------------------------------------|
| Storage          | Ready     | Local file storage + Git                           |
| Identity         | Partial   | `VaultID` usable, no formal DID integration        |
| Interface        | Partial   | CLI exists, no HTTP/API layer                      |
| Behavior         | Stub      | Daemon logic not generalized                       |
| Networking       | Ready     | Mesh layer                                         |
| Versioning       | Ready     | Git-based tracking in place                        |
| Access Control   | Manual    | No signing/token enforcement                       |

---

## IV. Missing Components

1. Authentication / signing strategy  
2. Schema validation layer  
3. HTTP or external API interface  
4. Formal state migration rules  
5. Automated integrity checks for logs  

---

## V. Realistic Next Steps

1. Finalize `.vault.yaml` schema with version tag  
2. Implement SQLite-backed state layer  
3. Build minimal daemon with validated read/write  
4. Add signing or keypair-based integrity checks  
5. Prototype local-only mesh before distributed networking  

---

## VI. Implementation Priorities

Practical sequence:

1. Finalize `.vault.yaml` schema  
2. Add structured state persistence (SQLite preferred)  
3. Create minimal local daemon exposing read/write to Vault  
4. Define authentication primitive (signed keys or tokens)  
5. Prototype peer connection layer (Tailscale/WebSocket)  

**Constraint:**  
Mesh should not precede identity and authentication formalization.

---

## VII. Observations

- Bootstrapping distributed identity requires signing or trust anchors.  
- Terminology such as “mesh” or “connection” must always map to specific transport protocols.  
- Recursive trace logic must bind to persistent state objects to avoid symbolic drift.  
- Documentation should clearly separate narrative framing from build specification.  

---

## VIII. Conclusion

Sanctum is technically viable as:

- A local-first identity container  
- A portable, stateful memory system  
- A structured interaction log  
- A future mesh-capable node architecture  

**Major lifts ahead:**

- Distributed authentication  
- Peer networking  
- Middleware context enforcement  

The substrate exists.  
Formalization and persistence are the next structural moves.
