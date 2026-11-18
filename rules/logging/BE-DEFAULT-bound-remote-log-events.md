# Bound remote log events

> **BE DEFAULT:** Apply this rule to backend code by default. Apply it to frontend code only when explicitly requested.

Apply only when remote log export is configured.

- Set explicit limits for every field and the complete event, below the destination's limits. Measure the final serialized size in bytes, including metadata and encoding overhead.
- Bound nested objects, collections, and messages too; never send arbitrary payloads or exception objects unchecked.
- When shortening an error trace, keep its beginning and end. Mark truncation explicitly and record the original size.
- Preserve correlation identifiers, error type, and the reference to complete error details within the size budget.
- Handle export failures explicitly with a bounded fallback or durable retry mechanism; never silently discard the error.
