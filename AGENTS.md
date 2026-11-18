# Repository language

- Write all repository content in English, including documentation, comments, and user-facing messages.

# Guideline files

- Write each guideline as a short Markdown (`.md`) file focused on one concept.
- Keep writing minimal, simple, and direct. Include only essential rules; avoid repetition, unnecessary sections, and lengthy explanations.
- Name the file after its concept title, using lowercase words separated by hyphens.
- For exclusive rules, prefix the filename with `BE-ONLY-` or `FE-ONLY-` and the title with `BE ONLY:` or `FE ONLY:`. Do not add a default-scope notice.
- Rules for both frontend and backend have no scope prefix or notice.
- For default-scope rules, prefix the filename with `BE-DEFAULT-` or `FE-DEFAULT-`. After the title, use the matching exact `BE DEFAULT:` or `FE DEFAULT:` notice defined in the README. Apply them to the other side only when explicitly requested.
- Place the file in the appropriate topic folder under `rules/`.

# Pushing to GitHub

- To publish `main` to `SpinFabio/CodingGuidelines`, run `make push` from the project root. Only push when requested.
- The push uses HTTPS with a fine-grained GitHub token belonging to `SpinFabio`, restricted to this repository with **Contents: Read and write** permission. It does not use the account password.
- The [Makefile](./Makefile) reads a single unquoted `githubtoken=TOKEN` line from the local `.env` file. Do not print the token or include it in commands, logs, or commits. Do not track `.env` in version control.
- If the token expires or is exposed, revoke it and replace it in the local file.
