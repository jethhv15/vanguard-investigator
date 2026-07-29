# Glossary

Version: 1.0 (Frozen)

---

# Purpose

This glossary defines the official terminology used throughout Vanguard Investigator.

Every document, inspector, report, and implementation must follow these definitions.

---

# Android Performance

The overall health of Android's execution flow.

Performance is determined by subsystem cooperation, stability, synchronization, consistency, and efficiency.

Performance is never represented by a single metric.

---

# Inspection

The systematic process of observing Android behavior and collecting evidence.

Inspection never changes system behavior.

---

# Investigation

A complete process that transforms observations into verified conclusions.

Investigation consists of:

- Inspection
- Evidence Collection
- Validation
- Correlation
- Diagnosis
- Reporting

---

# Evidence

Verified information collected from Android.

Evidence must be:

- Observable
- Measurable
- Traceable
- Reproducible

Evidence is never an opinion.

---

# Observation

A factual description of system behavior.

Observations do not explain causes.

---

# Correlation

The process of identifying relationships between multiple subsystem behaviors.

Correlation does not imply causation.

---

# Cause

The verified reason a system behaves in a particular way.

A cause must always be supported by evidence.

---

# Root Cause

The deepest verified reason responsible for the observed behavior.

Removing the root cause removes the problem.

---

# Diagnosis

The process of determining the root cause from validated evidence.

---

# Validation

The process of confirming that evidence and conclusions are correct.

---

# Report

The final structured output produced by an investigation.

A report includes:

- Problem
- Evidence
- Validation
- Correlation
- Root Cause
- Impact
- Confidence

---

# Metric

A measurable value collected from Android.

Metrics become evidence only after validation.

---

# Anomaly

Behavior that deviates from the expected execution flow.

An anomaly is not automatically a problem.

---

# Bottleneck

A subsystem that limits downstream performance.

---

# Imbalance

A condition where multiple subsystems operate at incompatible rates or workloads.

---

# Broken Flow

A disruption preventing Android's execution flow from continuing correctly.

---

# Subsystem

A functional part of Android responsible for a specific responsibility.

Examples include:

- CPU
- GPU
- Memory
- Scheduler
- Binder
- Thermal
- Display

---

# Inspector

A software component responsible for inspecting one subsystem.

Inspectors never diagnose.

Inspectors never optimize.

Inspectors only collect evidence.

---

# Validator

A component responsible for verifying evidence.

Validators never collect evidence.

---

# Correlation Engine

A component responsible for identifying subsystem relationships.

---

# Diagnosis Engine

A component responsible for determining root causes.

---

# Report Engine

A component responsible for generating investigation reports.

---

# Confidence

The degree of certainty assigned to an investigation result.

Confidence must be derived from evidence quality.

---

# Optimization

Any action that modifies Android behavior to improve performance.

Optimization is outside the scope of Vanguard Investigator.

---

# Vanguard Investigator

An Android Performance Inspection Framework that scientifically investigates Android performance through evidence-based analysis.

It never optimizes Android.

It only explains Android.
