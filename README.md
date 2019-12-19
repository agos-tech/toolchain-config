# Toolchain configurations

## Usage

This repository hosts toolchain configurations as defined with
[`nitpick`](https://nitpick.readthedocs.io) styles.

The [`nitpick` directory](nitpick) contains the style definitions to enforce a
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

4. Configure the semantic release in `package.json`, take inspiration from this
   very repository's [configuration](package.json). In particular, the version
   bump needs to be adapted to target the specific file hosting defining the
   value.

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

3. Configure the semantic release in `package.json`, take inspiration from this
   very repository's [configuration](package.json).

## Development

This project applies the general styles it defines with a pre-commit hook. You
will need the following software to develop against it:

- Python 3.7

Set-up the development environment with:

```
% python3 -mvenv .venv
% . ./.venv/bin/activate
(.venv) % pip install -r build-requirements.txt
(.venv) % pre-commit install
```

## Continuous Integration

Additional validation is run during continuous integration, see the
[Azure Pipelines configuration](azure-pipelines.yml).

The extra Node.js dependencies (frozen with `yarn`) are only used by the build
pipeline, there is no need to install them locally.

### Releases

The Azure pipeline will create a new release every time `master` is updated. The
release commit will be signed, and a new tag will be pushed.

The private key and passphrase must be made available to the pipeline,
respectively through
[Secure Files](https://docs.microsoft.com/en-us/azure/devops/pipelines/library/secure-files)
and
[Pipeline Secrets](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/variables#secret-variables).

## License

This project is licensed under the [Apache 2.0 License](LICENSE).
