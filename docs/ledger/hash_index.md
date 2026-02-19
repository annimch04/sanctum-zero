# Hash Index

This file maintains cryptographic references associated with Trace Ledger entries.

Separating hashes from narrative records allows independent verification,
flexible storage strategies, and clearer integrity boundaries.

Each record in this file should correspond to a Trace ID defined in
`trace_ledger.md`.

---

## Structure

Each entry includes:

- Trace ID
- Hash algorithm
- Hash value
- Artifact description
- Storage location or reference
- Timestamp (optional but recommended)

---

## Entry Format

### T### — Artifact Description

- Algorithm: SHA256
- Hash: <hash value>
- Related Ledger Entry: T###
- Artifact: <file name or description>
- Storage Location: <path, URI, or reference>
- Timestamp: YYYY-MM-DD (optional)
- Notes: Optional context

---

## Example Entry (Template)

### T001 — Ledger Initialization Template

- Algorithm: SHA256
- Hash: 0000000000000000000000000000000000000000000000000000000000000000
- Related Ledger Entry: T001
- Artifact: ledger/trace_ledger.md
- Storage Location: repository
- Timestamp: YYYY-MM-DD
- Notes: Replace with actual values in operational use

---

## Verification Guidance

To verify an artifact:

1. Compute the hash locally using the specified algorithm.
2. Compare the result with the value stored in this index.
3. Confirm the Trace ID linkage with the ledger entry.

Hash mismatches indicate modification or corruption of the artifact.

---

## Scope Notice

This repository includes a template hash index only.

Operational or instance-specific hashes may reference private artifacts
that should not be committed to public repositories.

Implementers are responsible for defining their own storage and retention
policies for production deployments.
