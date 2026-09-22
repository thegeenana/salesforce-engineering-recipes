# Repository architecture

## One project, multiple source roots

Every recipe is a Salesforce DX package directory with its own `main/default` metadata tree. This is the unit of source ownership and deployment.

```text
recipes/
  campaign-notification/
    main/default/classes/
    main/default/objects/
    main/default/lwc/
  mortgage-pricing/
    main/default/classes/
    main/default/objects/
    main/default/lwc/
```

Apex classes cannot be namespaced with arbitrary folders inside one metadata-type directory. Physical separation therefore happens above `main/default`, and class prefixes prevent collisions after recipes are installed into the same org.

## Dependency rule

A recipe is one of:

1. **Standalone** — deploy its source directory only.
2. **Shared-assisted** — deploy `shared` followed by the recipe.
3. **Framework integration** — requires an explicitly named external project.

Dependencies must be listed in `recipe.json` and the recipe README. Hidden cross-recipe dependencies are prohibited.

## Deployment rule

Individual deployment uses the recipe source directory or manifest. Full deployment uses an explicit list in `scripts/deploy-all.sh`. Experimental directories are never discovered by wildcard.

## Naming

Every recipe owns a short component prefix:

| Recipe | Prefix |
|---|---|
| Campaign notification | `CampaignNotify` |
| Mortgage pricing | `MortgagePricing` |
| Bulk trigger remediation | `BulkRepair` |
| Register PDF | `RegisterPdf` |
| Lead conversion | `LeadConvert` |
| Multi-currency invoicing | `CurrencyInvoice` |

Prefixes reduce collisions because all deployed Apex classes ultimately share the org namespace.
