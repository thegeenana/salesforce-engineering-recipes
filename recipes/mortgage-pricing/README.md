# Event-Driven Mortgage Pricing

## Problem

One mortgage request can produce several pricing options asynchronously rather than one immediate response.

## Why the obvious solution fails

Keep the LWC request open while a synchronous Apex call waits for every pricing provider.

## Salesforce constraints

- Synchronous request duration
- Multiple and out-of-order responses
- Correlation and timeout handling
- Responsive LWC state

## Proposed solution

Persist a pricing request, correlate Platform Event responses and present progressively aggregated options in an LWC.

## Component prefix

`MortgagePricing`

## Dependencies

This recipe is planned as a standalone Salesforce implementation. Optional framework integrations:

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
