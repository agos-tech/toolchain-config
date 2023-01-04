# 2.1.0 (2023-01-04)

### Features

- **azure:** add a template to commit changes and request merge

# 2.0.0 (2022-07-15)

### Features

- upgrade Python to 3.8+

### BREAKING CHANGES

- drop support for Python 3.7

## 1.44.1 (2022-06-30)

### Bug Fixes

- update commitlint pre-commit hook

# 1.44.0 (2022-06-30)

### Features

- **flinters:** upgrade terraform flinters

## 1.43.1 (2022-04-04)

### Bug Fixes

- **azure:** bump the container versions

# 1.43.0 (2022-04-04)

### Features

- **python:** update Python flinter containers to run against Python 3.8

## 1.42.4 (2022-04-04)

### Bug Fixes

- **azure:** bump container versions

## 1.42.3 (2022-04-04)

### Bug Fixes

- **heroku:** update configuration after dyno has been scale down

## 1.42.2 (2022-04-04)

### Bug Fixes

- **python:** black requires bump for 3.9 support

## 1.42.1 (2022-04-01)

### Bug Fixes

- **azure:** bump the container versions

# 1.42.0 (2022-04-01)

### Features

- **python:** relax Python version used for the tools

# 1.41.0 (2022-03-11)

### Features

- relax constraint on Python version, allow any 3.7+ runtime

## 1.40.1 (2021-12-09)

### Bug Fixes

- **azure:** bump the container versions

# 1.40.0 (2021-12-09)

### Features

- **tools:** update release-manager dependencies
- bump pre-commit-hooks to 4.0.1
- merge version bumps from dependabot
- upgrade commitlint to 15.0.0
- upgrade nitpick to 0.29.0

# 1.39.0 (2021-11-15)

### Features

- bump Node engine to 14.x

## 1.38.2 (2021-10-01)

### Bug Fixes

- **azure:** rollback to previous Heroku version, not previous database

## 1.38.1 (2021-09-28)

### Bug Fixes

- **azure:** add missing Heroku API key env var

# 1.38.0 (2021-09-07)

### Features

- **azure:** rollback app and database on heroku deploy failure, closes #3180

## 1.37.1 (2021-07-02)

### Bug Fixes

- **azure:** bump the container versions, closes #2887

# 1.37.0 (2021-07-02)

### Features

- **python:** add import-linter in the toolchain, closes #2884

## 1.36.1 (2021-06-28)

### Bug Fixes

- **azure:** bump the container versions, closes #2859

# 1.36.0 (2021-06-26)

### Features

- **python:** add flake8-bugbear to catch opinionated problems, closes #2848

# 1.35.0 (2021-06-25)

### Features

- **python:** update flake8 and its dependencies, closes #2422

# 1.34.0 (2021-06-22)

### Features

- **azure:** hook extra steps in maintenance mode during deployment, closes
  #2834

# 1.33.0 (2021-06-04)

### Features

- introduce Terraform quality assurance config, closes #2718
- **nitpick:** remove terrascan from nitpick config

# 1.32.0 (2021-06-04)

### Bug Fixes

- tag the Terraform flinters as well

### Features

- **azure:** update the checkout reference before releasing, closes #2757

# 1.31.0 (2021-06-04)

### Features

- add a Terraform flinter container, closes #2730
- **nitpick:** introduce the Terraform nitpick specification, closes #2756

# 1.30.0 (2021-05-28)

### Features

- execute the release stage on Ubuntu 20.04, closes #2716

# 1.29.0 (2021-05-28)

### Features

- **azure:** execute QA stages on Ubuntu 20.04, closes #2713

## 1.28.2 (2021-05-03)

### Bug Fixes

- **azure:** bump the container versions, closes #2588

## 1.28.1 (2021-04-30)

### Bug Fixes

- **azure:** bump the container versions, closes #2555

# 1.28.0 (2021-04-30)

### Features

- **python:** default Python version in pre-commit to 3.7, closes #2554

# 1.27.0 (2021-04-30)

### Features

- **python:** simplify isort's configuration, closes #2553

# 1.26.0 (2021-04-27)

### Features

- parametrize the Heroku proc type in the deploy job, closes #2515

## 1.25.2 (2021-04-13)

### Bug Fixes

- update the container versions to 1.25.1, closes #2424

## 1.25.1 (2021-04-12)

### Bug Fixes

- update yarn dependencies, closes #2425

# 1.25.0 (2021-04-09)

### Features

- **python:** upgrade isort to 5.8.0, closes #2423
- update pre-commit to 2.12.0

# 1.24.0 (2021-04-08)

### Features

- **python:** upgrade black to 20.8b1, closes #2320

# 1.23.0 (2021-03-28)

### Features

- upgrade nitpick to 0.26.0, closes #2292

# 1.22.0 (2020-12-18)

### Features

- **azure:** bump the container versions, closes #1846

# 1.21.0 (2020-12-18)

### Features

- propagate the Prettier update to containers, closes #1845

# 1.20.0 (2020-12-17)

### Features

- **nitpick:** bump required prettier version to 2.2.1, closes #1843

## 1.19.1 (2020-11-12)

### Bug Fixes

- let prettier format the changelog in-place, closes #1643

# 1.19.0 (2020-11-12)

### Bug Fixes

- make explicit the call to prettify the changelog, closes #1641
- **styles:** do not require local packages served elsewhere, closes #1635

### Features

- **azure:** make the semantic version release job use the container, closes
  #1634

## 1.16.1 (2020-10-13)

### Bug Fixes

- **python:** downgrade pre-commit to 2.2.0, closes #1457

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
