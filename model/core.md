# Core Model

## What the core model is

The core model is a canonical data schema that integrates CEDIA's business domains (contracts, products, categories, packages, flexibilization) **independently** from the original sources. It does not replicate any operational system structure; it defines a unified view for analysis and governance.

## Design principles

- **Normalization**: Avoid redundancy; well-defined entities; attributes dependent on the full key.
- **Keys**: Natural keys or surrogates when needed; prefer stable identification over time.
- **Time**: Consider versioning or historization when the business requires it; do not force it without an explicit requirement.

## What it solves vs. the sources

- **Fragmentation**: Sources (MariaDB, Postgres, Excel) have different structures; the core unifies criteria.
- **Inconsistency**: Each system may name and model differently; the core establishes a common vocabulary.
- **Readability**: Anyone can understand the model without knowing the source systems.
- **Traceability**: Domains document where each concept comes from; the core does not invent, it integrates.
