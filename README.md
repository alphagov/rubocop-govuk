# RuboCop GOV.UK

Defines the linting rules for GDS Ruby applications, primarily those associated with GOV.UK.

GOV.UK has used a styleguide for many years, starting with rules in written form, which we then [automated with RuboCop](https://github.com/alphagov/styleguides/commit/cb589cdc4ba17f9c341f4db75900e554dd042672#diff-99f257b41e6471357be7e37c3a41d79045d11f7f0ae1000d6f7fc63b502273e7) and later [moved into this repo](https://github.com/alphagov/govuk-rfcs/blob/main/rfc-100-linting.md#proposal). A styleguide is a valuable asset: it keeps our code consistent and prevents stylistic squabbles. Everyone on GOV.UK is encouraged to use it in their Ruby projects and [contribute](CONTRIBUTING.md) to dependency upgrades and new releases, keeping pace with the rest of the Ruby community.

## Installation

Add `rubocop-govuk` to your Gemfile and then run `bundle install`:

```ruby
# Gemfile
gem 'rubocop-govuk', require: false
```

Then inherit the default rules by adding the following in your project:

```yaml
# .rubocop.yml
inherit_gem:
  rubocop-govuk:
    - config/default.yml

inherit_mode:
  merge:
    - Exclude

# **************************************************************
# TRY NOT TO ADD OVERRIDES IN THIS FILE
#
# This repo is configured to follow the RuboCop GOV.UK styleguide.
# Any rules you override here will cause this repo to diverge from
# the way we write code in all other GOV.UK repos.
#
# See https://github.com/alphagov/rubocop-govuk/blob/main/CONTRIBUTING.md
# **************************************************************
```

You can also configure additional rules for Rails and RSpec:

```yaml
# .rubocop.yml
inherit_gem:
  rubocop-govuk:
    ...
    - config/rails.yml
```

```yaml
# .rubocop.yml
inherit_gem:
  rubocop-govuk:
    ...
    - config/rspec.yml
```

## Contributing

Rules in this repo are defined based on their compatibility with GOV.UK apps and their code conventions. Everyone else is welcome to use it and suggest changes - see [CONTRIBUTING.md](CONTRIBUTING.md) for more details.

## Licence

[MIT License](LICENCE)

