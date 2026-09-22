# Multi-Currency Invoicing and Credit Notes

## Problem

International advertisement sales require invoices and credit notes whose historical values remain commercially truthful.

## Why the obvious solution fails

Recalculate historical documents from the latest exchange rate whenever they are viewed.

## Salesforce constraints

- Record and corporate currencies
- Rate effective dates
- Rounding and precision
- Credit-note linkage to original values

## Proposed solution

Snapshot the agreed commercial currency, rate and monetary values, then derive adjustments from the immutable original transaction.

## Component prefix

`CurrencyInvoice`

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
