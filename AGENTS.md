# mojotools

Small Mojo utilities live in `src/mojotools`. This is a Mojo source project,
not an installable Python package. Dependencies are managed with `uv`;
`pyproject.toml` requires Python >=3.14 and Mojo >=1.1.0.

Use `uv run mojo` to select the project compiler (the global compiler may differ).
Use current Mojo syntax, concise names, and avoid unnecessary comments.
Type parameters use brackets: `Variant[Int, String]`. Represent an absent value
with `Optional[T]`; use explicit `.copy()` when returning borrowed collections
or variants containing non-implicitly-copyable values.

Verify library files with `uv run mojo precompile src/mojotools -o /tmp/mojotools.mojoc`.
Run tests with `uv run mojo -I src tests/test_basics.mojo` (`-I src` is the
editable-install equivalent). After `ln -sfn "$(pwd)/src/mojotools"
.venv/lib/python3.14/site-packages/modular/lib/mojo/mojotools`, `uv run mojo
tests/test_basics.mojo` works without `-I`.
Run executable examples with `uv run mojo path/to/example.mojo`.
Run `uv run ruff format` and `uv run ruff check` after changes; run
`uv run pytest -s` when a `tests/` directory exists. Ruff checks Python, not Mojo;
always compile affected Mojo code as well.
