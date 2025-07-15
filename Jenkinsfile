pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/Nunya64/my-first-repo.git'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: "${env.GIT_REPO}", credentialsId: 'github-ssh'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                sh 'echo Simulated build step'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo Simulated test step'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                sh 'echo Simulated deploy step'
            }
        }
    }
}
