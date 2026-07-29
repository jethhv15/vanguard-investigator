# Runtime

Version: 1.0 (Frozen)

---

# Purpose

The Runtime coordinates every component inside Vanguard Investigator.

It defines how inspection flows through the investigation pipeline.

---

# Runtime Flow

Investigation Request

↓

Runtime

↓

Inspectors

↓

Evidence

↓

Validators

↓

Correlation Engine

↓

Diagnosis Engine

↓

Report Engine

↓

Investigation Report

---

# Runtime Responsibilities

The Runtime:

- Initializes inspectors
- Coordinates execution
- Collects evidence
- Manages pipeline stages
- Produces final reports

---

# Runtime Rules

The Runtime never:

- Generates evidence
- Diagnoses problems
- Modifies Android

Its responsibility is orchestration.

---

# Design Principle

Every component communicates through structured outputs.

No component directly controls another component.

---

# Final Statement

The Runtime is the conductor.

The engines perform the investigation.
