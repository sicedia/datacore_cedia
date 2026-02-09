# datacore_cedia

Data modeling and lightweight documentation repository for CEDIA's data architecture.

**Repository:** [github.com/sicedia/datacore_cedia](https://github.com/sicedia/datacore_cedia)

## Purpose

- Copy and preserve DDLs from multiple sources (MariaDB, Postgres, Excel)
- Document business domains (contracts, products, categories, packages, flexibilization)
- Design a progressive core model independent of sources
- Diagram structures with Mermaid
- Keep everything simple, readable, and versioned

## How to use

1. **sources/**: Store DDLs and notes per source system (MariaDB, Postgres, Excel)
2. **domains/**: Document each business domain with entities, relationships, and sources
3. **model/**: Evolve the core model, ER diagrams, and canonical DDL
4. **decisions.md**: Chronological log of modeling decisions

## What this repo is NOT for

- Data pipelines
- ETL or executable transformations
- Query or index optimization for production
- Orchestration tools (dbt, Spark, Airflow) unless explicitly requested

This repository is **documentation and design**, not execution.
