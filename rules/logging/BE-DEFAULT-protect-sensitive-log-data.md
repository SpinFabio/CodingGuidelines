# Protect sensitive log data

> **BE DEFAULT:** Apply this rule to backend code by default. Apply it to frontend code only when explicitly requested.

Never log passwords, tokens, credentials, or unnecessary personal data, including inside error messages and stack traces.
Apply redaction before writing to any destination, including stdout and stderr.
Do not log entire headers, query strings, request bodies, or response bodies indiscriminately.
