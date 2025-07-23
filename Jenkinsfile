pipeline {
    agent any
    stages {
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
                echo 'Verifying index.html is served on port 5900...'
                sh 'curl -f http://localhost:5900 || exit 1'
            }
        }
    }
}
