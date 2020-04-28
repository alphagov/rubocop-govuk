# 3.6.0

* Remove config that matches RuboCop defaults (#47)
* Reorganise all the Cops (#44)

# 3.5.0

* Disable pending cops by default (#37)

# 3.4.0

* Add rubocop-rake cops (#32)
* Revert #27 (hash transform cops) (#31)

# 3.3.2

* Exclude /tmp directory (#29)

# 3.3.1

* Exclude two unsafe style cops (#27)

# 3.3.0

* Exclude Rails migrations from linting checks (#25)

# 3.2.0

* Configure new cops about hash styles (#24)
* Exclude `tmp` directory from linting checks (#22)

# 3.1.0

* Fix deprecation warning for AllCops/Excludes => AllCops/Exclude (#17)
* Exclude `config.ru` from linter checks (#18)

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
