# Safe Tagging Wrapper

Location: docs/security/safe_tagging.md  
Status: Active Security Tool

---

## Purpose

The safe tagging wrapper enforces provenance when applying tags inside the Sanctum vault.

All tagging actions must declare a valid operator identity through the `--source` field.  
The wrapper prevents anonymous or ambiguous tagging events and ensures that every tag
operation carries attribution metadata.

---

## Script

The wrapper is implemented as:

```
scripts/safe_tag_file.sh
```

It validates inputs before delegating execution to:

```
ops/tag_file.py
```

---

## Enforcement Rules

The wrapper performs three checks before executing the underlying tagging command.

### Source Verification

`--source` must include the operator identifier.

If the identifier is missing, execution stops.

Example rejection:

```
BLOCKED: --source must include the operator identity.
```

---

### Description Safeguard

If a description is not provided, a default description is inserted automatically.

```
Auto-description: tagging action recorded by secure wrapper
```

This ensures that tag entries never appear without contextual metadata.

---

### Safe Delegation

After validation passes, the wrapper forwards the command to the core tagging script.

```
ops/tag_file.py
```

---

## Example Usage

Minimum invocation:

```
safe_tag_file.sh \
  --path vault/example.md \
  --source "operator declaration"
```

Full example:

```
safe_tag_file.sh \
  --path vault/patterns/example.md \
  --source "operator declaration" \
  --description "tagging origin event" \
  --tags pattern initiation \
  --crosslinks vault/meta/reference.md
```

---

## Security Rationale

The Sanctum tagging system treats authorship provenance as a protected boundary.

This wrapper ensures:

- tagging cannot occur anonymously
- every tag action carries attribution
- vault metadata maintains a verifiable origin

---

## Possible Future Enhancements

- automatic tagging logs
- timestamp insertion
- tag schema validation
- provenance hashes for tagged artifacts
