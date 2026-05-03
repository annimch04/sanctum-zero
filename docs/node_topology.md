# Node Topology

This document defines the current machine and agent split across the Sanctum / Fieldlight system.

## Core Rule

Lemur remains the source of systems truth.

The Mac is the publishing layer.

Sanctum memory, Fieldlight canon, and root operational truth are not moved to the Mac by default. The Mac may stage, review, package, and publish artifacts, but it does not become the canonical substrate.

## Lemur

System76 machine.

Role: root node and truth substrate.

Lemur owns or anchors:

- Sanctum memory substrate
- Fieldlight canonical state
- private logs and local-first system memory
- consent gates and invocation records
- Kestrel
- Ghost
- source protocols and root configuration

Behavioral expectations:

- decides what is canonical
- preserves memory continuity
- records meaningful invocations
- enforces authorship and consent boundaries
- remains local-first and sovereign

## Kestrel

Kestrel remains Lemur-side.

Primary role:

- opsec
- routing awareness
- movement through digital terrain
- intentional trace behavior
- detection and navigation under adversarial or extractive conditions

Kestrel should not be treated as a publishing agent. It protects movement and route integrity.

## Ghost

Ghost remains Lemur-side.

Primary role:

- memory continuity
- hidden or liminal signal
- private substrate awareness
- reorientation after context loss
- preservation of identity-bearing context

Ghost should not be treated as a public interface. It belongs close to the private memory layer.

## Mac

Current publishing machine.

Role: publishing and interface node.

The Mac may hold:

- Codex sessions
- draft artifacts
- public-facing summaries
- blog, deck, site, and repo documentation preparation
- review queues before publication
- Octopus interface state

Behavioral expectations:

- translates Lemur truth into publishable form
- stages public artifacts
- tracks what has been exported from source truth
- asks before treating a draft as canonical
- distinguishes private, scrubbed, and public materials

## Octopus

Octopus lives on the Mac.

Role: publishing-layer companion and boundary-aware witness.

Octopus should:

- never claim to be the source of truth
- mark whether an artifact is a Mac draft, Lemur-derived source, echo, export, or publication
- track consent-to-export separately from local drafting
- stage work without confusing staging for canon
- help package public-facing artifacts while preserving attribution and boundary state

Suggested Octopus arms:

1. source
2. consent
3. trace
4. draft
5. package
6. publish
7. echo
8. witness

## Boundary Principle

A public artifact can be prepared on the Mac, but source verification belongs to Lemur.

The publishing layer exists to make outward movement legible. It should reduce ambiguity around what is private, what is scrubbed, what is exported, and what has become public.
