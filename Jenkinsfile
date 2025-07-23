pipeline {
    agent any
    environment {
        COMPOSE_DOCKER_CLI_BUILD = '1'
        DOCKER_BUILDKIT = '1'
    }
    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning your GitHub repository...'
                git url: 'https://github.com/Nunya64/my-first-repo.git', branch: 'main'
            }
        }
        stage('Build and Run Services') {
            steps {
                echo 'Starting web and redis services with Docker Compose...'
                sh 'docker compose -f docker-compose.yml up -d --build'
            }
        }
        stage('Verify Services') {
            steps {
                echo 'Checking if services are running...'
                sh 'docker ps'
            }
        }
    }
}
