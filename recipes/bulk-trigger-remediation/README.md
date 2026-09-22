# Bulk Trigger Remediation

## Problem

Automation works for a few records but fails around a trigger-sized collection or data load.

## Why the obvious solution fails

Process each record independently with queries and DML inside loops.

## Salesforce constraints

- SOQL and DML limits
- CPU time
- Multiple trigger invocations
- Recursion and order of execution

## Proposed solution

Collect identifiers, query once, use maps and sets, apply bulk DML and move secondary work out of the transaction.

## Component prefix

`BulkRepair`

## Dependencies

This recipe is planned as a standalone Salesforce implementation. Optional framework integrations:

- ApexRail
- ApexSignal

## Status

Documentation scaffold only. No production-ready Salesforce metadata has been implemented or validated yet.

## Planned evidence

- Positive and negative tests
- Bulk or scale boundary tests
- Explicit transaction and failure semantics
- Deployment manifest
- Architecture walkthrough
- Interview-ready explanation
