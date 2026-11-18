# Validate environment variables at startup

Use one module to validate all environment variables used by the application at startup, never on first use.

- Run it from every entrypoint, before any writes, request handling, background work, or other side effects, including those triggered by imports.
- Check required values, types, formats, ranges, and dependencies. Define optional values and defaults explicitly.
- If validation fails, report the errors without exposing secrets and exit with a non-zero status. Never announce successful startup.
- Application code must use the validated configuration instead of reading environment variables directly.

Fail fast, not hours or days after startup.
