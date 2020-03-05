# Unreleased

* Fix deprecation warning for AllCops/Excludes => AllCops/Exclude (#17)

# 3.0.0

* Update Rubocop to 0.80.1
  * This deletes the Style/BracesAroundHashParameters cop for future
    Ruby 3 compatibility.
* Exclude `bin` directory and `db/schema.rb` from linter checks (#14)

# 2.0.0

* Use specific version for RuboCop
* Update RuboCop to 0.77

# 1.0.0

* Allow importing of Ruby and Rails rules seperately

# 0.2.0

* Disable the Style/FormatStringToken cop

# 0.1.0

* Initial release with previous work from `govuk-lint`
