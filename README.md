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

## Testing

Run `bundle exec rake`.

[guides]: https://github.com/alphagov/styleguides
