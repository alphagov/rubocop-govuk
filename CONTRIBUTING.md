# Contributing

This guidance is intended for changes to:

- versions of dependencies for this repo (e.g. RuboCop itself); and
- the [extra config we have](https://github.com/alphagov/rubocop-govuk/tree/main/config) to support historical GOV.UK patterns.

All dependencies should be [locked to patch versions to avoid surprise upgrades](https://github.com/alphagov/rubocop-govuk/pull/154) in consumer repos.

## Getting started

To install dependencies:

```bash
bundle
```

To lint the config / Rakefile:

```bash
bundle exec rake
```

RuboCop GOV.UK is a styleguide, so each rule in each YAML file should have a comment to explain why it's there. This is enforced by linting with [a custom `explain_yourself` rake task](https://github.com/alphagov/rubocop-govuk/blob/main/Rakefile).

## Doing a release

### 1. Check what the impact is going to be

Find out how much effort it will be to adopt your changes in typical GOV.UK repos. This could just be running `rubocop -A` to autocorrect new issues, or it could involve significant manual effort.

You can test changes against an alphagov repo by [running the GitHub worflow](https://github.com/alphagov/rubocop-govuk/actions/workflows/run-against-project.yml) we have configured.

This is a rough list of typical GOV.UK repos we recommend testing against:

- An old app e.g. Whitehall, Smart Answers
- A newer app e.g. Content Publisher, Email Alert API
- A non-Rails app e.g. Search API
- A gem e.g. GDS API Adapters

### 2. Decide if the config needs to change

Ideally we should have none of our own config and follow RuboCop defaults:

- This is easier than making our own decisions.
- We don't want to diverge from the Ruby community.

However, we also want to make it easy for all GOV.UK repos to keep pace with RuboCop GOV.UK. This means we should **try to ensure all issues can be auto-corrected or are easy to fix manually**.

You should only change the config as a last resort. Examples of good changes:

- Disable a rule if it's based on heuristics ([example](https://github.com/alphagov/rubocop-govuk/blob/ce655779e45892db6ac00d6789c652ec2e506748/config/metrics.yml#L1-L10)).

- Change a rule to match a GOV.UK-wide pattern ([example](https://github.com/alphagov/rubocop-govuk/blob/ce655779e45892db6ac00d6789c652ec2e506748/config/rails.yml#L16-L25)).

- Change a rule if the effort to fix is *very* high ([example](https://github.com/alphagov/rubocop-govuk/blob/ce655779e45892db6ac00d6789c652ec2e506748/config/rspec.yml#L33-L35)).

Sometimes it's more appropriate to put config overrides in the `.rubocop.yml` file of consumer repos ([example](https://github.com/alphagov/content-store/blob/857275148323fc9536490aefc253c8a9e73a175a/.rubocop.yml#L10-L12)). Use this approach if the override is only necessary in a small number of repos.

### 3. Consider making a pre-release version

This can be helpful if there are lots of changes where it's hard to assess the impact e.g. a major dependency upgrade. Use the pre-release version to gather feedback from maintainers of consumer repos, working with them to make any necessary adjustments here before releasing the next official version.

👉 [Example of major release after testing a pre-release version](https://github.com/alphagov/rubocop-govuk/compare/v4.0.0.pre.1...v4.0.0).

### 4. Make your CHANGELOG really helpful

The [CHANGELOG.md](CHANGELOG.md) is what maintainers of consumer repos will use to understand your changes. Tools like Dependabot will automatically include it in PR descriptions. A helpful changelog:

- Gives an overview of the change e.g. "Upgrade X to Y".

- Explains any actions to take e.g. "run `rubocop -A`".

- Advises on potential compatibility issues (TODO: example).
