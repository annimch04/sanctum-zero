# Signature Block Tool

---

## Purpose

The signature block tool appends a standardized provenance record to Sanctum documents.

It ensures that files carry:

- authorship attribution
- invocation seal status
- date of issuance
- integrity checksum

The tool also records each signature event in a vault log.

---

## Script Location

```
scripts/sign_block.sh
```

---

## Behavior

When executed, the script:

1. Prompts the operator to select an invocation seal status.
2. Appends a canonical signature block to the file.
3. Calculates a SHA-256 checksum of the file.
4. Logs the signature event.

---

## Invocation Seal Levels

| Seal | Meaning |
|-----|------|
| Active | Document is active and in current operational use |
| Provisional | Document is experimental or under evaluation |
| Archived | Document is preserved but no longer active |

---

## Usage

Example:

```
./scripts/sign_block.sh vault/patterns/example.md
```

The tool will prompt for a seal level and append the signature block.

---

## Example Signature Block

```
---
Filed to: `vault/patterns/example.md`
Filed by: operator
Role: operator
Invocation Seal: Provisional
Date: 2025-04-17
```

---

## Logging

Signature events are recorded in:

```
vault/logs/signature_issuance.md
```

Each entry includes:

- timestamp
- file path
- SHA-256 checksum
- seal level

---

## Security Rationale

Signature blocks create a verifiable chain of authorship and document state.

Combined with checksum logging, they provide a basic integrity audit for documents within the Sanctum vault.
