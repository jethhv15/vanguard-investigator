# Architecture

Version: 1.0 (Frozen)

---

# Purpose

This document defines the investigation architecture of Vanguard Investigator.

It does not describe implementation.

It describes how Android performance should be understood by the investigation engine.

---

# Investigation Philosophy

Android is not a collection of isolated components.

Android is an interconnected performance system.

Every subsystem influences one or more other subsystems.

No subsystem should be investigated in isolation.

---

# Investigation Layers

Vanguard Investigator understands Android as the following layers.

Application

↓

Android Framework

↓

System Services

↓

Native Services

↓

HAL

↓

Linux Kernel

↓

Hardware

Every investigation begins from observed behavior and traces evidence across these layers.

---

# Performance Domains

Android performance is divided into independent domains.

CPU

GPU

Memory

Thermal

Input

Display

Scheduler

Binder

Filesystem

Power

Network

Each domain owns its own evidence.

No domain owns another domain.

---

# Evidence Flow

Every investigation follows the same evidence flow.

Inspect

↓

Collect Evidence

↓

Validate Evidence

↓

Observe

↓

Correlate

↓

Identify Root Cause

↓

Validate Diagnosis

↓

Generate Report

No investigation may skip a stage.

---

# Dependency Direction

Dependencies always flow downward.

Application

↓

Framework

↓

Native

↓

Kernel

↓

Hardware

Root cause analysis may trace upward after evidence collection.

---

# Correlation

Subsystems never operate independently.

Correlation is required between domains.

Examples include:

CPU ↔ Scheduler

Scheduler ↔ Thermal

CPU ↔ Binder

Binder ↔ Framework

Framework ↔ SurfaceFlinger

SurfaceFlinger ↔ GPU

GPU ↔ Display

Input ↔ Application

Memory ↔ CPU

Power ↔ Thermal

Every reported issue must identify relevant subsystem relationships.

---

# Investigation Output

Every completed investigation produces:

Observed Problem

↓

Evidence

↓

Evidence Validation

↓

Subsystem Correlation

↓

Root Cause

↓

Impact Analysis

↓

Confidence

↓

Investigation Report

---

# Final Statement

Architecture exists to explain Android.

Implementation exists to realize the architecture.

Implementation may evolve.

Architecture remains stable.
