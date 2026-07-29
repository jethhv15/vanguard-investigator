# Engineering Principles

Version: 1.0 (Frozen)

---

# Purpose

These principles guide every engineering decision made within Vanguard Investigator.

Whenever a design decision is questioned, these principles take precedence.

---

# Principle 1

Evidence Before Opinion

Every conclusion must be supported by evidence.

Personal assumptions are never considered evidence.

---

# Principle 2

Inspect Before Diagnose

Diagnosis without complete inspection is prohibited.

Every subsystem must be inspected before identifying the root cause.

---

# Principle 3

Correlate Before Conclude

A single metric never represents the whole system.

Subsystem relationships must always be evaluated before drawing conclusions.

---

# Principle 4

Everything Has Context

Every metric must answer:

- Where?
- When?
- Why?
- Under what conditions?

Without context, metrics are meaningless.

---

# Principle 5

Root Cause Over Symptoms

FPS drops are symptoms.

High latency is a symptom.

Thermal throttling is a symptom.

The investigation always searches for the root cause.

---

# Principle 6

Never Guess

If evidence is insufficient,

the correct answer is:

UNKNOWN

Never invent explanations.

---

# Principle 7

Validation Before Report

Every diagnosis must be validated before appearing in the final report.

---

# Principle 8

Explain Everything

Every investigation result must be understandable by humans.

If it cannot be explained,

it should not appear in the report.

---

# Principle 9

Consistency Matters

Performance is not measured by isolated peaks.

Performance is measured by stability, consistency, and subsystem cooperation.

---

# Principle 10

One Responsibility

Every component inside Vanguard Investigator has exactly one responsibility.

Inspectors inspect.

Validators validate.

Pipeline processes.

Reporter reports.

Responsibilities never overlap.

---

# Final Principle

Truth over expectations.

The investigation follows evidence,

not assumptions.
