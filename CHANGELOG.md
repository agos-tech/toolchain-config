## 1.4.1 (2020-01-23)

### Bug Fixes

- invalidate cached virtual environments on Python updates, closes #619

# 1.4.0 (2020-01-21)

### Features

- **azure:** introduce Poetry templates
- **azure:** introduce the Quality Assurance stage templates, closes #593

# 1.3.0 (2020-01-16)

### Features

- **python:** make pre-commit an extra dependency within "linters", closes #597

# 1.2.0 (2020-01-07)

### Features

- add an Azure Pipeline template to trigger a semantic release, closes #587
- add an Azure Pipeline template to validate commit messages, closes #589
- add an Azure Pipeline template to validate toolchain conformity, closes #588

# 1.1.0 (2019-12-19)

### Features

- sign release objects with GPG, closes #584

## 1.0.1 (2019-12-17)

### Bug Fixes

- tweak the conventional commits changelog preset, closes #586

# 1.0.0 (2019-12-17)

### Bug Fixes

- **python**: Add isort missing dependency and specify line length, closes #560

### Features

- create new releases when master is updated, closes #583
- lint commit messages, closes #582
- **common**: Add bashate to lint shell scripts on pre-commit, closes #568
- Create a new style for Django projects based on Python, closes #556
- **python**: Take on flake8 configuration approved in the Django repo
- **python**: Use prettier as a pre-commit hook
- **python**: Add the isort pre-commit hook
- Define the Python styles off the SCF engine, closes #554
- Initiate the nitpick styles, closes #541
