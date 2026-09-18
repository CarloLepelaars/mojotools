# mojotools

Small Mojo utilities live in `src/mojotools`. This is a Mojo source project (NOT Python). Dependencies are managed with `uv`;
`pyproject.toml` requires Python >=3.14 and Mojo >=1.1.0.

These implementations are similar to AnswerAI's [fastcore](https://fastcore.fast.ai/) library. Refer to the [fastai style guide](https://docs.fast.ai/dev/style.html) for more information on coding principles.

Tests are `tests/test_*.mojo` with `test_*` functions and no `main()`. `./quality.sh` discovers them and runs the suite. 