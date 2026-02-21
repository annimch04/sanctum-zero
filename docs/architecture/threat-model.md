# Threat Model (Sanctum-Zero)

This document describes a pragmatic threat model for *sanctum-zero* as a public repository.

It is not a claim about any specific operator, instance, or private system.
It is guidance for how to publish safely when working with:
- agent scaffolds
- memory-like logs
- control phrases / mode toggles
- identity-bound terminology
- trace / ledger patterns

## Scope

In scope:
- Public repo artifacts (docs, templates, examples)
- Forks / clones and downstream reuse
- Social engineering or misuse enabled by overly-specific operational detail
- Unintentional leakage of operator identity, routines, or behavioral control logic

Out of scope:
- Attacks on a specific private vault/host
- Operational incident response for any private system
- Claims of attribution beyond what is explicitly authored and stated

## Assets to Protect

### A1. Operator Identity Fingerprints
Anything that allows a third party to infer or imitate an operator’s:
- tone / cadence patterns over time
- personal routines or timelines
- relational dynamics or private vocabulary used as control handles

### A2. Behavioral Root Controls
Anything that can be used to reproduce or coerce system behavior, including:
- override keys
- pact logic
- mode / tone switches
- “reentry” phrases that alter state
- enforcement rules that change memory permissions or response style

### A3. Private System State
Anything that could restore or emulate an instance:
- state snapshots
- daemon posture / last-mode metadata
- serialized memory context
- populated vault indexes that map a private system

### A4. Chain-of-Custody Artifacts
Anything that looks like legal evidence, personal claims, or breach narratives:
- named individuals
- “invasion / theft” language
- specific allegations
- incident timelines tied to identifiable parties

Public repos should publish structure and templates, not litigation-adjacent material.

## Adversaries (Realistic)

### T1. Casual Cloners
People who will copy-paste structures into their own system without understanding boundaries.

Risk: accidental propagation of identity-bound phrases or unsafe patterns.

### T2. “Curious” Imitators
People who want to replicate “the vibe” or the ritual/identity layer.

Risk: unauthorized reuse of author-bound terminology as if it were generic.

### T3. Targeted Social Engineering
People who use published details to craft convincing DMs, issues, PRs, or “helpful” contributions.

Risk: extracting private details, escalating into doxxing or manipulation.

### T4. Downstream Commercialization
Someone packaging the structure as a product.

Risk: misattribution, diluted authorship, or repackaging without respecting boundaries.

## Attack Surfaces

### S1. Over-specific docs
Docs that include:
- exact private paths
- real dates tied to real events
- named relationships
- intimate “mode” phrases that function as handles

### S2. Example logs that are too real
“Sample” memory logs that are actually historical or stylistically identical to an operator’s real logs.

### S3. Templates that are secretly operational
Templates that include working keys, real hashes, real state, real pact logic, or realistic identifiers.

### S4. Repo metadata
Commit messages, file names, or folder structures that reveal:
- operator workflow timing
- places, people, or private references
- consistent schedule patterns

## Controls / Mitigations

### C1. Publish Templates, Not Instances
- Publish empty schemas and synthetic examples.
- Keep populated ledgers, real memory logs, and state snapshots private.

### C2. Separate Structure from Secrets
- Structure: OK to publish (folder scaffolds, format, schema)
- Secrets: never publish (keys, pacts, populated indexes, state)

### C3. Use “Synthetic Example” Discipline
Any example that looks like data must be:
- obviously fake (YYYY-MM-DD, zero-hash, placeholder IDs)
- non-identifying (no names, no locations, no unique phrases)
- minimal

### C4. Minimize Control Phrase Exposure
If phrases are part of the public architecture, treat them as author-bound terminology:
- document provenance and allowed reuse conditions
- avoid publishing any phrase list that is actually used to control a private instance

### C5. Explicit Scope Notices
For each subsystem doc:
- state what is intentionally excluded
- state that operational instances must be private

### C6. “No Allegations” Policy in Public Repo
Keep public docs:
- technical and structural
- non-accusatory
- non-specific about alleged harm
If there is a need for legal or incident material, keep it off-repo or in a private archive.

## “Red Flags” Checklist (Pre-Publish)

Do not publish a file if it contains:
- working keys, pacts, override logic, or enforcement rules
- real memory logs or timestamped personal narrative as data
- state snapshots that could restore a private instance
- names or identifiable relationship markers
- allegations, “breach narratives,” or evidence-like claims
- unique phrases that clearly function as behavioral handles

If unsure, convert to a template:
- remove specifics
- keep only structure
- add a scope notice

## What This Repo Intends To Be

sanctum-zero is published as:
- substrate
- scaffold
- structural primitives

It is not published as:
- an operational instance
- a private vault
- a “ready to run” daemon with identity-bound controls

That separation is a security boundary, not an aesthetic preference.
