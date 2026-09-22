# Recipe authoring standard

## Required narrative

Every recipe README must answer:

1. What is the business problem?
2. Why does the obvious implementation fail?
3. Which Salesforce limits, security rules or transaction boundaries apply?
4. What alternatives were considered?
5. What design was selected and why?
6. How is the implementation deployed?
7. How is it tested?
8. What negative cases are proved?
9. What operational evidence is produced?
10. What trade-offs remain?
11. How would the solution be explained in an interview?

## Required repository files

```text
recipes/<id>/
  README.md
  recipe.json
  docs/ARCHITECTURE.md
  manifest/package.xml
  main/default/<metadata types>
```

The `main/default` tree is added when implementation starts. Git does not preserve empty folders, and documentation-only recipes must not contain fake metadata.

## Test expectations

Tests should cover, where applicable:

- one record;
- a trigger-sized collection;
- multiple transaction invocations;
- partial success;
- retry or duplicate delivery;
- permissions and invalid configuration;
- governor-limit-sensitive behaviour;
- negative business cases.

## Evidence

Prefer measurable evidence: query counts, DML counts, processed records, job outcomes, correlation IDs and deterministic assertions. Avoid unsubstantiated performance claims.
