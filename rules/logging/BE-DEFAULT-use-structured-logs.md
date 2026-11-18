# Use structured logs

> **BE DEFAULT:** Apply this rule to backend code by default. Apply it to frontend code only when explicitly requested.

Write each log as a stable message string plus a dictionary of named fields.
Keep variable values in the dictionary, not interpolated into the message.
Preserve fields as searchable structured data in the logging backend, not a stringified dictionary.

Example: `"Payment failed"` + `{"order_id": "...", "request_id": "...", "error_type": "..."}`.
