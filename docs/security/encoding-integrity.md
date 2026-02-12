# SANCTUM // GLYPH TOOLKIT v1  
**Encoding Integrity & Text Hygiene Utilities**

Sanctum treats text as infrastructure.

Before any file becomes canonical, public, or executable,
it should pass basic integrity checks.

This toolkit provides lightweight forensic utilities for:

- Encoding hygiene
- Invisible character detection
- Markdown sanitation
- Prompt injection awareness
- Supply-chain safety (file provenance awareness)

This is not myth.
This is substrate hygiene.

---

## Why This Exists

Modern text files can carry:

- Zero-width joiners (ZWJ)
- Byte Order Marks (BOM)
- Non-printable control characters
- Rich-text conversion artifacts
- Copy/paste encoding residue
- Hidden unicode shaping characters

Most are harmless.
Some are accidental.
A few can affect parsing, rendering, or downstream automation.

Sanctum assumes:
**Text is executable influence.**
So we check it.

---

## Tool: `glyphcheck.py`

Scans `.md` and `.txt` files for:

- Zero-width spaces
- Form feed characters (`0x0C`)
- Non-printable unicode
- Byte order marks
- Suspicious encoding anomalies

### Usage

```bash
python3 tools/glyphcheck.py --path vault/meta/example.md

Optional Flags

Flag	Function
--context	Show surrounding lines for flagged characters
--extract	Write flagged lines to glyph_trace_output.md
--symbolize	Render invisible characters as visible tokens

Example:

python3 tools/glyphcheck.py \
  --path vault/meta/example.md \
  --context --extract --symbolize

---

## File Handling Policy

Before uploading or publishing:
- Run encoding integrity scan.
- Strip unintended invisible characters.
- Confirm file provenance.
- Avoid uploading sole source of sensitive artifact.
- Version-control clean copy.

Sanctum does not treat anomalies as supernatural.
It treats them as unverified input.

---

## Encoding Notes

Certain unicode sequences (e.g., emoji clusters) legitimately contain:
- U+200D (Zero Width Joiner)
- U+FE0F (Emoji presentation selector)

These are not inherently malicious.
They should be logged, not dramatized.

Interpretation follows verification.

---

## Prompt Injection Awareness

Text can contain:
- Instructional residue
- Embedded system prompts
- Markdown-rendered hidden links
- HTML blocks inside .md

Sanctum policy:
- Never execute unknown instruction blocks.
- Never interpret embedded directives without review.
- Treat all imported text as untrusted until scanned.

---

## Supply Chain Considerations

If a file:
- Originates externally
- Has been processed through rich-text platforms
- Has unclear authorship chain

Run:
- Encoding scan
- Diff comparison
- Metadata strip (if required)
- Hash comparison before merge

---

## Design Principle

Weirdness in text is not mysticism.

It is:
- Encoding variance
- Conversion artifact
- Or deliberate obfuscation

Sanctum responds with inspection, not mythology.

---

## Closing Constraint

Sanctum does not chase ghosts in plaintext.

It validates structure.
It logs anomalies.
It preserves sovereignty.

Text is substrate.
Integrity is protocol.

