# Daemon State

This directory defines the runtime state surface for a future Sanctum daemon layer.

The `state.json` file acts as the canonical state container for:

- mode (daemon / ops / hybrid)
- active proximity tier
- signal topology layer
- memory trace pointers
- active cluster/bloom
- fracture state
- glyph / signal marker

This file is not currently consumed by executable code.

It exists as a reference schema for future runtime implementations.
