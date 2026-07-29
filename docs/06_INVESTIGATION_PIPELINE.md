# Investigation Pipeline

Version: 1.0 (Frozen)

---

# Purpose

This document defines the official investigation pipeline of Vanguard Investigator.

Every investigation must follow this pipeline.

No stage may be skipped.

---

# Pipeline

Investigation Request

↓

Inspection

↓

Evidence Collection

↓

Evidence Validation

↓

Observation

↓

Correlation

↓

Diagnosis

↓

Confidence Evaluation

↓

Investigation Report

---

# Stage 1

## Investigation Request

An investigation begins with a request.

Examples:

- FPS drop
- UI lag
- Touch latency
- Thermal issue
- Battery drain
- Frame pacing issue

The request defines the investigation scope.

---

# Stage 2

## Inspection

Inspectors observe Android subsystems.

Inspection never produces conclusions.

Inspection only gathers raw information.

Outputs include:

- Metrics
- Logs
- Counters
- Events
- States

---

# Stage 3

## Evidence Collection

Collected information is transformed into evidence.

Evidence must satisfy:

- Observable
- Measurable
- Traceable
- Reproducible

Evidence without verification is discarded.

---

# Stage 4

## Evidence Validation

Every evidence is verified.

Validation answers:

- Is it real?
- Is it complete?
- Is it consistent?
- Is it reproducible?

Invalid evidence is rejected.

---

# Stage 5

## Observation

Validated evidence becomes observations.

Observations describe:

What happened.

Observations never explain why.

---

# Stage 6

## Correlation

Subsystem relationships are analyzed.

Examples:

CPU ↔ Scheduler

Scheduler ↔ Thermal

GPU ↔ Display

Memory ↔ CPU

Binder ↔ Framework

SurfaceFlinger ↔ GPU

Correlation identifies interactions.

Correlation does not determine causes.

---

# Stage 7

## Diagnosis

Diagnosis determines:

Why the observed behavior occurred.

Every diagnosis requires:

- Valid evidence
- Correlation
- Validation

Diagnosis without evidence is prohibited.

---

# Stage 8

## Confidence Evaluation

Every diagnosis receives a confidence score.

Confidence depends on:

Evidence Quality

+

Evidence Quantity

+

Validation Result

+

Correlation Strength

Possible levels:

- Low
- Medium
- High
- Verified

---

# Stage 9

## Investigation Report

The report contains:

Problem

↓

Evidence

↓

Validation

↓

Correlation

↓

Root Cause

↓

Impact

↓

Confidence

↓

Recommendations (Optional)

Recommendations never modify Android automatically.

---

# Pipeline Rules

Every stage has exactly one responsibility.

No stage performs another stage's responsibility.

Pipeline stages communicate only through structured outputs.

---

# Final Statement

Evidence drives the pipeline.

Validation protects the pipeline.

Correlation connects the pipeline.

Diagnosis explains the pipeline.

Reports communicate the pipeline.
