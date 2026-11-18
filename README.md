# CodingGuidelines

Language- and tool-independent guidelines for agents that write and modify code.

All repository content must be written in English.

## Rule scope

These guidelines aim to be broadly applicable, mainly to high-level programming languages.
Examples often use Python, but the principles apply to other languages where relevant.

Each rule has one of four scopes:

| Scope | Filename prefix | Title or opening notice |
| --- | --- | --- |
| Backend only | `BE-ONLY-` | Title starts with `BE ONLY:`. Never applies to frontend. |
| Frontend only | `FE-ONLY-` | Title starts with `FE ONLY:`. Never applies to backend. |
| Both | None | No scope prefix or notice. Applies to both. |
| Default scope | `BE-DEFAULT-` or `FE-DEFAULT-` | Matching opening notice starts with `BE DEFAULT:` or `FE DEFAULT:`. Applies to the other side only when explicitly requested. |

Use these standard opening notices for default scope:

> **BE DEFAULT:** Apply this rule to backend code by default. Apply it to frontend code only when explicitly requested.

> **FE DEFAULT:** Apply this rule to frontend code by default. Apply it to backend code only when explicitly requested.

Frontend applications must not introduce logging, log files, or remote export just to satisfy backend-default logging rules.

## Planned structure

- `rules/` - Coding rules organized by topic:
  - `agent-behaviour/` - Agent workflow and approval rules.
  - `best-practices/` - Readability and simplicity.
  - `naming-conventions/` - Clear and consistent names.
  - `environment-variables/` - Centralized configuration validation and fail-fast startup.
  - `logging/` - What to log, when, and at which level.
  - `error-handling/` - How to handle and propagate errors.
  - `testing/` - What to test and how to cover regressions.
  - `documentation/` - Guide to using the repository.
