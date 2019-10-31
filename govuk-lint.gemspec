# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "govuk-lint"
  spec.version       = "4.1.0"
  spec.authors       = ["Government Digital Service"]
  spec.email         = ["govuk-dev@digital.cabinet-office.gov.uk"]

  spec.summary       = %q{A wrapper around rubocop, configured with the GDS style guides}
  spec.description   = %q{Include this in your project to easily validate it against the GDS style guides}
  spec.homepage      = "https://github.com/alphagov/govuk-lint"

  spec.files         = Dir["{configs}/**/*"]

  spec.add_development_dependency "rake"

  spec.add_dependency "rubocop", "~> 0.76"
  spec.add_dependency "rubocop-rails", "~> 2"
  spec.add_dependency "rubocop-rspec", "~> 1.28"
end
