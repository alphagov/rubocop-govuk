# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "rubocop-govuk"
  spec.version       = "1.0.0"
  spec.authors       = ["Government Digital Service"]
  spec.email         = ["govuk-dev@digital.cabinet-office.gov.uk"]

  spec.summary       = "RuboCop GOV.UK"
  spec.description   = "Shared RuboCop rules for Ruby projects in GOV.UK"
  spec.homepage      = "https://github.com/alphagov/rubocop-govuk"
  spec.license       = "MIT"

  spec.files         = Dir["config/**/*", "*.md"]

  spec.add_development_dependency "rake", "~> 12.0"

  spec.add_dependency "rubocop", "0.76"
  spec.add_dependency "rubocop-rails", "~> 2"
  spec.add_dependency "rubocop-rspec", "~> 1.28"
end
