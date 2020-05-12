# 3.10.0

* Enable Style/NegatedIf (#71)
* Enable Style/GlobalVars (#71)
* Enable Style/RaiseArgs (#71)
* Enable Style/MethodDefParentheses (#71)
* Enable Style/NumericLiterals (#71)
* Enable Layout/MultilineArrayLineBreaks (#63)
* Enable Layout/MultilineHashKeyLineBreaks (#63)
* Enable Layout/MultilineMethodArgumentLineBreaks (#63)
* Enable Layout/FirstMethodArgumentLineBreak (#63)
* Fix bug with Style/FormatString (#70)

# 3.9.0

* Enable Style/Alias (#60)
* Enable Style/AsciiComments (#60)
* Enable Style/BlockDelimiters (#60)
* Enable Style/CaseEquality (#60)
* Enable Style/PreferredHashMethods (#60)
* Enable Style/DoubleNegation (#60)
* Enable Style/FormatString (#60)
* Enable Style/Encoding (#64)
* Enable Style/IfWithSemicolon (#64)
* Enable Style/Lambda (#64)
* Enable Style/LambdaCall (#64)
* Enable Style/ModuleFunction (#64)
* Enable Style/NilComparison (#64)
* Enable Style/SignalException (#64)
* Enable Style/SingleLineMethods (#64)
* Enable Style/CommandLiteral (#64)
* Disable Metrics/BlockLength (#65, #68)

# 3.8.0

* Enable check for flip-flops (#55)
* Enable Layout/FirstArrayElementIndentation (#56)
* Enable Layout/FirstHashElementIndentation (#56)
* Enable Naming/AsciiIdentifiers (#58)
* Enable Naming/FileName (#58)
* Enable Rails/ActionFilter (#59)
* Enable Rails/ScopeArgs (#59)

# 3.7.0

* Turn a load of Cops back on (#52)

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
