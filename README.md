# Toolchain configuration

Make sure to enable the [`pre-commit`](https://pre-commit.com/) hook if you want
to update this repository (e.g. within a new virtual environment or with
[`pipx`](https://pipxproject.github.io/pipx/)).

## [`nitpick`](nitpick)

The styles definitions for [`nitpick`](https://nitpick.readthedocs.io) enforce a
consistent toolchain configuration across our repositories.

`nitpick` is (currently) biased towards Python projects. For non-Python projects
(like this one), we need to cheat our way in:

1. Create `setup.cfg` in the root directory, either specifying the directories
   to `include` or the ones to `exclude` (comma-separated values):

   ```
   # setup.cfg
   [flake8]
   include = "nitpick"
   ```

2. Create an empty dummy Python file to force the linter to run in your target
   directory.
