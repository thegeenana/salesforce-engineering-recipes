# Shared source

This package directory is reserved for utilities that are genuinely common to multiple recipes.

It must remain small. A utility belongs here only when:

- at least two active recipes need it;
- it has no business-domain behaviour;
- moving it here improves independent testing;
- it does not duplicate ApexRail, ApexSignal, ApexConvoy or ApexGrant.

The directory intentionally contains no Salesforce metadata yet.
