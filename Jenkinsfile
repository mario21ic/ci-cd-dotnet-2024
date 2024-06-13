pipeline {
    agent any
    stages {
        stage("Repository") {
            steps {
                checkout scm
            }
        }
        stage("Test & Build") {
            steps {
                echo "test_build"
                echo "FEAT-125"
            }
        }
        stage("Deploy") {
            steps {
                echo "deploy"
            }
        }
    }
}
