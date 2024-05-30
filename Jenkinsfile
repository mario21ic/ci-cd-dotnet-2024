pipeline {
  agent any

  stages {
    stage("Repository") {
      steps {
        checkout scm
      }
    }

    stage("Check") {
      steps {
        echo "Nueva feature en FEAT-124"
        sh "./scripts/check_syntax.sh"
        echo "Sonarqube"
        echo "Style"
      }
    }
    
    stage("Build") {
      steps {
        echo "Dependencies"
        echo "Building App"
      }
    }

    stage("Test") {
      steps {

        sh "./scripts/unit_tests.sh ${env.BUILD_NUMBER}"
        sh "./scripts/integration_tests.sh ${env.BUILD_NUMBER} ${env.JOB_NAME}"

        echo "Performance test"
        echo "Security test"
        echo "Acceptance test"
        echo "End to end test"

      }
    }

    stage("Deploy") {
      steps {
        echo "Calling another job"
      }
    }

    stage('Report') {
      steps {
        echo "Publishing report"
        echo "${env.GIT_BRANCH}"
        echo "${env.GIT_COMMIT}"
        echo "${env.GIT_URL}"
        
        echo "${env.JOB_NAME}"
        echo "${env.JOB_URL}"
        echo "${env.BUILD_URL}"
        echo "${env.BUILD_NUMBER}"
        echo "${env.BRANCH_NAME}"
      }
      
    }
  }
}
