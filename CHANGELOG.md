## 1.15.1 (2020-07-07)

### Bug Fixes

- **azure:** do not execute conditional steps on failure, closes #1262

# 1.15.0 (2020-07-06)

### Features

- **azure:** allow to reset database while deploying to Heroku, closes #1260

## 1.14.1 (2020-06-24)

### Bug Fixes

- propagate the new flinters versions, closes #1204

# 1.14.0 (2020-06-24)

### Features

- add a flinter for regular Python projects, closes #1203

# 1.13.0 (2020-06-11)

### Features

- **python:** ignore contrib'ed modules tests as well, closes #1171

# 1.12.0 (2020-06-01)

### Features

- **azure:** propagate the styles update, closes #1095

# 1.11.0 (2020-06-01)

### Bug Fixes

- update isort & co and ignore contrib'ed modules, closes #1134

### Features

- update nitpick to 0.22.2, closes #1094

# 1.10.0 (2020-05-11)

### Features

- update the Javascript dependencies, closes #1050

# 1.9.0 (2020-04-29)

### Features

- fully parametrize deploy-container-to-heroku job template

# 1.8.0 (2020-04-28)

### Features

- **azure:** template deployment to Heroku, closes #984

# 1.7.0 (2020-04-13)

### Features

- create container recipes to replace pre-commit steps, closes #838

## 1.6.2 (2020-04-08)

### Bug Fixes

- **python:** propagate the pre-commit hooks version bump, closes #821

# 1.6.0 (2020-02-27)

### Features

- **common:** upgrade pre-commit-hooks to 2.5.0

# 1.5.0 (2020-01-31)

### Features

- **azure:** add a node variation on the quality assurance stage

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
