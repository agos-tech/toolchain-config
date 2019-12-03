# Toolchain configuration

Make sure to enable the [`pre-commit`](https://pre-commit.com/) hook if you want
to update this repository (e.g. within a new virtual environment or with
[`pipx`](https://pipxproject.github.io/pipx/)).

## [`nitpick`](nitpick)

The styles definitions for [`nitpick`](https://nitpick.readthedocs.io) enforce a
consistent toolchain configuration across our repositories.

### Python projects

Bootstrap `nitpick` by:

1. Updating the pre-commit configuration with:

   ```
   # .pre-commit-config.yaml
   repos:
     ...
     - repo: https://github.com/andreoliwa/nitpick
       rev: v0.21.2
       hooks:
         - id: nitpick
   ```

2. Updating the Python project configuration with:

   ```
   # pyproject.toml
   ...

   [tool.nitpick]
   style = "https://raw.githubusercontent.com/agos-tech/toolchain-config/<COMMIT_REF>/nitpick/python-style.toml"
   ```

   Where `<COMMIT_REF>` points to a commit reference.

3. Kick-starting `nitpick` which will now control the toolchain configuration:
   ```
   % poetry run pre-commit run nitpick
   ```

### Other projects

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
