# Campaign Notifications at Scale architecture

## Design question

A single transaction cannot safely notify a large Campaign Member population.

## Boundary

This document will describe components, transactions, data ownership, asynchronous boundaries, failure states and operational evidence before implementation begins.

## Decision status

Proposed. The implementation issue must refine and accept the architecture before Salesforce metadata is added.
