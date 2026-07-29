# Evidence Model

Version: 1.0 (Frozen)

---

# Purpose

The Evidence Model defines the standard structure of evidence used throughout Vanguard Investigator.

Every inspector must produce evidence following this model.

Every validator, correlation engine, diagnosis engine, and report engine consumes the same evidence format.

---

# Evidence Definition

Evidence is verified information collected from Android that can support or reject an investigation hypothesis.

Evidence is factual.

Evidence is measurable.

Evidence is reproducible.

Evidence is traceable.

---

# Evidence Lifecycle

Inspection

↓

Raw Data

↓

Evidence

↓

Validation

↓

Correlation

↓

Diagnosis

↓

Report

---

# Evidence Structure

Every evidence must contain:

- Evidence ID
- Timestamp
- Inspector
- Source
- Subsystem
- Metric
- Value
- Unit
- Context
- Collection Method
- Validation Status

---

# Evidence Quality

Evidence quality depends on:

- Accuracy
- Completeness
- Consistency
- Reproducibility
- Traceability

---

# Evidence Classification

Evidence may be classified as:

- Metric
- Event
- State
- Log
- Trace
- Counter

---

# Evidence Rules

Evidence never contains conclusions.

Evidence never contains recommendations.

Evidence only represents observable facts.

---

# Final Statement

Evidence is the foundation of every investigation.

Without evidence,

there is no diagnosis.
