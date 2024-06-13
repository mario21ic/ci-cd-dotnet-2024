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
            }
        }
        stage("Deploy") {
            steps {
                echo "deploy"
            }
        }
    }
}
