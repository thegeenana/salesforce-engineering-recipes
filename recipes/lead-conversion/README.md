# Safe Lead Conversion

## Problem

Custom lead conversion must coordinate Account, Contact and optional Opportunity outcomes without corrupting the transaction.

## Why the obvious solution fails

Add unrelated trigger automation around the standard conversion call without an explicit orchestration boundary.

## Salesforce constraints

- Duplicate handling
- Field mapping
- Validation and automation interactions
- Conversion failure semantics

## Proposed solution

Validate intent, isolate matching and mapping policies, execute conversion once and process post-conversion work explicitly.

## Component prefix

`LeadConvert`

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
