# Salesforce Engineering Recipes

**Problem-led Salesforce implementations for learning, revision and engineering evidence.**

Salesforce Engineering Recipes is George Wiafe's working collection of focused Salesforce solutions. Every recipe begins with a business or platform problem, explains why a naive implementation fails, and demonstrates a bulk-safe, secure, testable and operationally explainable approach.

> Problem. Constraint. Design. Implementation. Evidence.

## Why recipes?

This repository is not a collection of disconnected Apex snippets. Each recipe captures an engineering argument:

1. What problem are we solving?
2. Why does the obvious solution fail?
3. Which Salesforce constraints matter?
4. What design decision resolves those constraints?
5. How do tests and operational evidence prove the result?

## Repository model

This is one Salesforce DX project containing multiple package directories. Every recipe owns a separate source root:

```text
recipes/<recipe-id>/main/default/
```

Apex metadata types do not support arbitrary subfolders inside one shared `classes` directory. Package-directory separation allows one recipe to be deployed independently while preserving the option to deploy the complete collection.

## Initial catalogue

| Recipe | Problem | Stage |
|---|---|---|
| [Campaign notifications at scale](recipes/campaign-notification/README.md) | Notify large Campaign Member populations without exhausting one transaction | Planned |
| [Event-driven mortgage pricing](recipes/mortgage-pricing/README.md) | Collect and correlate multiple asynchronous pricing responses | Planned |
| [Bulk trigger remediation](recipes/bulk-trigger-remediation/README.md) | Repair automation that fails around 200 records | Planned |
| [Register PDF generation](recipes/register-pdf/README.md) | Transform operational records into a stable formatted document | Planned |
| [Safe lead conversion](recipes/lead-conversion/README.md) | Customise conversion without losing transactional integrity | Planned |
| [Multi-currency invoicing](recipes/multi-currency-invoicing/README.md) | Preserve commercial truth across currencies, invoices and credit notes | Planned |

## Deploy one recipe

```bash
sf project deploy start \
  --source-dir recipes/campaign-notification \
  --target-org recipes
```

If the recipe declares a dependency on `shared`:

```bash
sf project deploy start \
  --source-dir shared \
  --source-dir recipes/campaign-notification \
  --target-org recipes
```

Each recipe also owns a deployment manifest:

```bash
sf project deploy start \
  --manifest recipes/campaign-notification/manifest/package.xml \
  --target-org recipes
```

## Deploy all recipes

Use the explicit repository script:

```bash
./scripts/deploy-all.sh recipes
```

Explicit source paths prevent incomplete experiments from being included accidentally.

## Recipe contract

Every recipe contains:

- `README.md` — problem, constraints, solution and trade-offs;
- `recipe.json` — machine-readable identity, dependencies and test classes;
- `docs/ARCHITECTURE.md` — flow and component decisions;
- `manifest/package.xml` — independent deployment boundary;
- `main/default/` — Salesforce source owned by the recipe.

See [Recipe authoring standard](docs/RECIPE-STANDARD.md).

## Related framework projects

Recipes may optionally demonstrate:

- [ApexRail](https://github.com/thegeenana/apexrail-trigger-framework)
- [ApexSignal](https://github.com/thegeenana/apexsignal-logging-framework)
- [ApexConvoy](https://github.com/thegeenana/apexconvoy-batch-framework)
- [ApexGrant](https://github.com/thegeenana/apexgrant-framework)
- [Mapato Salesforce Connector](https://github.com/DigitalOncloud/mapato-salesforce-connector)

A recipe should show native Salesforce mechanics first where doing so improves learning. Portfolio frameworks remain optional unless the recipe is explicitly an integration demonstration.

## Author

Designed and maintained by **George Wiafe**.

## Licence

MIT — see [LICENSE](LICENSE).
