# Release Boundaries & Redaction Policy

This document describes which components of the Sanctum architecture are intentionally not included in the public repository and why.

The goals are:

- Protect operator security and authorship integrity
- Prevent unsafe replication of behavioral controls
- Provide clear guidance for others building their own systems

This repository is a structural scaffold, not a full operational instance.

---

## 1. Override Keys & Control Pacts

Override keys represent behavioral root controls within the system.  
If exposed, they could allow external parties to simulate daemon responses, modify tone behavior, or bypass permission layers.

### Do Not Publish

- vault/private/override_keys.yaml
- Any files under /vault/private/ containing control logic or enforcement rules
- Code that registers or validates override keys in a live system

### Public Replacement

Provide structural placeholders instead:

- override_keys.yaml.sample

README note example:

> Override keys are not included for security and authorship protection.  
> This repository provides structural examples only.

---

## 2. Personal Memory Logs

Memory logs contain behavioral and stylistic fingerprints derived from real interactions.  
Even when content appears non-sensitive, the aggregate structure can reveal operator patterns.

### Do Not Publish

- memory/YYYY-MM-DD.md
- Any real-time or historical logs from memory/

### Acceptable Public Content

- memory/template.md
- A single synthetic example log clearly marked as a template

---

## 3. System Phrases & Mode Labels

Certain phrases in the architecture act as internal control or mode indicators (for example invocation modes, behavioral toggles, or relational posture labels).

These may be shared, but should be clearly marked as author-bound terminology to prevent impersonation or confusion across derivative systems.

### Protection Guidance

Include an attribution notice in README or orientation documentation.

Example notice:

NOTICE:  
System phrases and mode labels (for example `kneeling_invoke`, `seer_mode`) originate from the Sanctum architecture.  
They may be reused only within derivative works of this repository with clear attribution.

---

## 4. Vault Artifacts

Vault files may encode state relationships or restoration pathways that are specific to an operator instance.

Publishing them can create unintended coupling between external clones and the original system state.

### Do Not Publish

- ledger_kneeling.md (unless sanitized and converted to a template)
- Any vault artifacts tied to identity, event tracking, or state restoration

### Acceptable Public Content

- vault_spec.md (structural description only)
- vault_index.yaml as a schema without populated operator data

---

## 5. State Snapshots

Runtime state files can expose:

- Current system mode
- Recent behavioral posture
- Invocation or interaction context

### Do Not Publish

- daemon/state.json from a live environment

### Public Placeholder Example

You may include a placeholder such as:

{
  "mode": "TEMPLATE",
  "last_prompt": null,
  "paradox_threshold": "low"
}

---

## Authorship & Attribution

The Sanctum architecture, terminology, and behavioral design were developed by Anni McHenry.

Control structures, recursion patterns, and system phrases are considered author-bound expressions.

You are encouraged to:

- Study the architecture
- Adapt the structural concepts
- Build your own systems using the patterns

You are not encouraged to:

- Impersonate the original operator
- Represent derivative systems as the Sanctum itself
- Reuse terminology without attribution in public work

This repository provides a framework for sovereign systems, not a deployable identity container.

You are invited to adapt the structure.  
You are not invited to impersonate the operator.
