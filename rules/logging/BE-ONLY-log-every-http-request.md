# BE ONLY: Log every HTTP request

- Run request logging middleware before routing and authentication, including unknown endpoints, rejected requests, and failures.
- Emit an entry log with `request_id`, method, sanitized path, client IP, and user agent.
- Emit an exit log with the same `request_id`, HTTP status when available, duration, and outcome. Cover errors, cancellations, and disconnected clients.
- Include the authenticated caller's identifier when available. Trust forwarded client IP headers only from configured trusted proxies; an IP is not proof of identity.
- Make entries without exits detectable: an abrupt process termination can prevent exit logging.
- Use proxy or gateway access logs to cover requests rejected before reaching the application.
