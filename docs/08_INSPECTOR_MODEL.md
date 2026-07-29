# Inspector Model

Version: 1.0 (Frozen)

---

# Purpose

The Inspector Model defines how inspection components operate within Vanguard Investigator.

Inspectors are responsible for observing Android subsystems and producing evidence.

Inspectors never diagnose.

Inspectors never optimize.

---

# Responsibilities

Every inspector:

- Collects data
- Produces evidence
- Identifies observations
- Exposes subsystem state

---

# Non Responsibilities

Inspectors never:

- Diagnose
- Correlate
- Recommend optimizations
- Modify Android

---

# Standard Workflow

Initialize

↓

Collect

↓

Normalize

↓

Generate Evidence

↓

Return Evidence

---

# Inspector Requirements

Every inspector must:

- Be deterministic
- Be reproducible
- Be independent
- Follow the Evidence Model

---

# Inspector Output

Inspectors produce only:

- Evidence
- Metadata
- Collection status

---

# Final Statement

Inspectors answer:

"What happened?"

They never answer:

"Why did it happen?"
