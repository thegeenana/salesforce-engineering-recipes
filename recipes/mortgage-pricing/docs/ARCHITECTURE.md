# Event-Driven Mortgage Pricing architecture

## Design question

One mortgage request can produce several pricing options asynchronously rather than one immediate response.

## Boundary

This document will describe components, transactions, data ownership, asynchronous boundaries, failure states and operational evidence before implementation begins.

## Decision status

Proposed. The implementation issue must refine and accept the architecture before Salesforce metadata is added.
