#!/usr/bin/env groovy

library("govuk")

node {
  govuk.buildProject(
    sassLint: false,
    afterTest: {
      stage("Check documentation") {
        sh("bundle exec rake explain_yourself")
      }
    }
  )
}
