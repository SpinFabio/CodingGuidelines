# BE ONLY: Preserve complete errors

Write the error type, message, full stack trace, and chained causes to stdout or stderr, after removing secrets and sensitive data.
Keep the operation's correlation identifiers with the error.

Stdout and stderr collectors can also truncate or reject large events.
Preserve oversized error details in a protected destination that supports their size, and include a reference in the bounded log event.
