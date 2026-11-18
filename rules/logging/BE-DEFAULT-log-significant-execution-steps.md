# Log significant execution steps

> **BE DEFAULT:** Apply this rule to backend code by default. Apply it to frontend code only when explicitly requested.

Log enough context to reconstruct what happened and why it failed.
Record significant steps, decision branches, outcomes, and failure reasons with relevant identifiers.
Make clear which path was taken and which condition or value caused a failure, subject to data-protection rules.
Do not log every function call or `if` indiscriminately.
