# Crown Marketplace - Feature tests

This repository contains feature tests for the [Crown Marketplace][] and [Crown Marketplace Legacy][] project which can be run in non development environments.

This is a ruby project which uses [Cucumber][] BDD framework and [Capybara][] to run the tests.

## Software Setup

### MacOS

This guide assumes you have Homebrew installed.

#### Check the Ruby version
> **_NOTE:_** The project currently runs on 3.2.1 (March 2023)

Ensure that a ruby version manager (e.g. rvm or rbenv) is installed and set up properly, using 3.2.1 as the Ruby version before trying anything else. 

#### Software requirements

This project uses geckodriver, which requires the Firefox browser, as the web driver for the cucumber feature tests

```shell
brew install --cask firefox
brew install geckodriver
```

## Setting up the test environment

Before running the tests, make sure you have all the gems installed by running

```shell
bundle install
```

Crown Marketplace project has 5 environments:
- local - the development environment
- sandbox
- cmpdev - the QA environment
- preview
- production - the live environment

To run in a specific environment you will need to set the `TEST_ENV` environment variable, which is `local` by default.

The Crown Marketplace application requires users to be logged in when using it so you need to also set the authentication config.
For obvious reasons we do not store this config in this public repo so you will need to make your own config files in the `config/` folder.

The filename should be `environment.<TEST_ENV>.yml`, for example the config file for the cmpdev environment would be named `environment.cmpdev.yml`.
The file should then contain the following keys which you need to fill in

```yml
---
users:
  buyer:
    email:
    password:
  admin:
    email:
    password:
```

If you do not have any authentication details, speak to a developer on the project and they should be able to provide you with some.

### Test data

Some of the features will check the supplier results and so assume that the test data has been loaded into the system.
You can find the test data in the [`data/`][data folder] folder.

This data should never be uploaded to production.
We use [tags][] to make sure that only features that do not require test data are run on production.

## Running the features

To run all the tests use the command

```shell
bundle exec cucumber
```

To run the tests in specific environment preface the command with the `TEST_ENV` environment, for example

```shell
TEST_ENV=cmpdev bundle exec cucumber
```

To run a specific test add the file path after the command

```shell
bundle exec features/path/to/feature.feature
```

To run the tests for each service in parallel, run the command

```shell
bin/parallel_cucumber.rb <profile> <test_env>
```

Separate terminals will open up for each service where the tests will then be run.
Note, this only works on a Mac.

### Profiles and Tags

As will as the default cucumber profiles (`default`, `rerun`, `wip`) we have an additional `accessibility` profile.
This is used to run our [accessibility features][] which we keep them separate from the service feature tests.

We also have some additional tags which are used during the setup of the `default` profile

| Tag                   | Purpose                                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------------------- |
| @accessibility        | Marks a feature as an accessibility test and are not run as part of the default profile                     |
| @smoulder             | Used to mark a subset of the test that we can run after a release to make sure the applications are working |
| @skip-non-production  | Marks a feature to be skipped if `TEST_ENV` is not production                                               |
| @skip-production      | Marks a feature to be skipped if `TEST_ENV` is production                                                   |

The reason we have special tags for production is that the features assume that test data is being used.
As we cannot use test data in production we use `@skip-production` tag to mark tests we know will not work in production.

Because we know some features will not work, there are some extra features that exist to be used when running tests on production.
As the other environments do not need to run these features, the functionality will have already been covered in other features, we use the `@skip-non-production` tag to skip them.

### Accessibility features

We use [Axe Cucumber][] to in our accessibility tests.

To run an accessibility feature  you need to use the `accessibility` profile as accessibility are ignored by the default profile

```shell
bundle exec -p accessibility features/path/to/feature.feature
```

## Linting

The [rubocop][] & [rubocop-rspec][] gems are used to enforce standard coding styles.
Some "cops" in the standard configuration have been disabled or adjusted in [`.rubocop.yml`][rubocop-yml].

Rubocop can be run with the command

```shell
bundle exec rubocop
```

## Contributing

To contribute to the project, you should checkout a new branch from `main` and make your changes.

Before pushing to the remote, you should squash your commits into a single commit.
This can be done using `git rebase -i main` and changing `pick` to `s` for the commits you want to squash (usually all but the first).
This is not required but it helps keep the commit history fairly neat and tidy

Once you have pushed your changes, you should open a Pull Request on the main branch which will run Rubocop.

Once all these have passed, and the PR has been reviewed and approved by another developer, you can merge the PR.

[Crown Marketplace]: https://github.com/Crown-Commercial-Service/crown-marketplace-legacy
[Crown Marketplace Legacy]: https://github.com/Crown-Commercial-Service/crown-marketplace-legacy
[Cucumber]: https://cucumber.io/
[Capybara]: https://github.com/teamcapybara/capybara
[data folder]: https://github.com/tim-s-ccs/crown-marketplace-feature-tests/blob/main/data
[tags]: #profiles-and-tags
[accessibility features]: #accessibility-features
[Axe Cucumber]: https://www.deque.com/axe/
[rubocop]: https://github.com/rubocop-hq/rubocop
[rubocop-rspec]: https://github.com/rubocop-hq/rubocop-rspec
[rubocop-yml]: https://github.com/tim-s-ccs/crown-marketplace-feature-tests/blob/main/.rubocop.yml
