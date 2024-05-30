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
        sh "./scripts/check_syntax.sh"
        echo "sonarqube"
        echo "style"
      }
    }
    
    stage("Build") {
      steps {
        echo "dependencies"
        echo "build app"
      }
    }

    stage("Test") {
      steps {

        sh "./scripts/unit_tests.sh ${env.BRANCH_NAME}"
        sh "./scripts/integration_tests.sh ${env.BRANCH_NAME} ${env.BUILD_NUMBER}"

        echo "performance test"
        echo "security test"
        echo "acceptance test"
        echo "end to end test"

      }
    }

    stage("Deploy") {
      steps {
        echo "calling another job"
      }
    }

    stage('Report') {
      steps {
        echo "publishing report"
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
