# Campaign Notifications at Scale

## Problem

A single transaction cannot safely notify a large Campaign Member population.

## Why the obvious solution fails

Loop through every Campaign Member and send or enqueue all notifications from one synchronous transaction.

## Salesforce constraints

- Governor limits and transaction size
- Duplicate delivery and retry safety
- Progress and failure visibility
- Campaign-level metrics

## Proposed solution

Partition work into controlled asynchronous scopes, preserve idempotency, isolate failed members and publish measurable progress.

## Component prefix

`CampaignNotify`

## Dependencies

This recipe is planned as a standalone Salesforce implementation. Optional framework integrations:

- ApexConvoy
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
