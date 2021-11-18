# RuboCop GOV.UK

This repository provides common RuboCop rules for use with GOV.UK Ruby projects to comply with our [style guides][guides].

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

It's also worth including the following to encourage contributions:

```yaml
# rubocop.yml
inherit_gem:
  ...

inherit_mode:
  ...

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

## Testing

Run `bundle exec rake`.

[guides]: https://github.com/alphagov/styleguides
