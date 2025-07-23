pipeline {
    agent any
    stages {
        stage('Setup Network') {
            steps {
                echo 'Creating shared Docker network for Jenkins and services...'
                sh 'docker network create jenkins-network1 || true'
            }
        }
        stage('Build and Run Nginx with Docker Compose') {
            steps {
                echo 'Starting Nginx and Redis services with Docker Compose...'
                sh 'docker compose -f docker-compose.yml up -d --build'
            }
        }
        stage('Verify Nginx Service') {
            steps {
                echo 'Checking running containers...'
                sh 'docker ps'
                echo 'Connecting Jenkins container to the network...'
                sh 'docker network connect jenkins-network1 $(hostname) || true'
                echo 'Verifying index.html is served on port 5900...'
                sh 'curl -f http://web:80 || exit 1'
            }
        }
    }
}
