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
                sh "echo test_build"
            }
        }
        stage("Deploy") {
            steps {
                sh "echo deploy"
            }
        }
    }
}
