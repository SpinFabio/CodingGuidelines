# Correlate related logs

> **BE DEFAULT:** Apply this rule to backend code by default. Apply it to frontend code only when explicitly requested.

Use consistent field names and identifiers to connect logs for the same operation.
On the backend, generate a unique `request_id` in HTTP middleware. Include it in every related log, including frontend logs when available.
Propagate correlation context through service calls, background tasks, and asynchronous work.
Give jobs their own execution identifier and preserve the originating request identifier when available.
