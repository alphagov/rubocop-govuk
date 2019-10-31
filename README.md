# RuboCop GOV.UK

This repository provides common RuboCop rules for use with GOV.UK Ruby projects to comply with our [style guides][guides].

## Installation

Add `rubocop-govuk` to your Gemfile and then run `bundle install`:
```ruby
# Gemfile
gem 'rubocop-govuk'
```

Inherit rules from the gem by adding the following to your project's RuboCop config:
```yaml
# .rubocop
inherit_gem:
  rubocop-govuk: config/all.yml
```

## Usage

Run RuboCop: 

```sh
bundle exec rubocop
```

[guides]: https://github.com/alphagov/styleguides
