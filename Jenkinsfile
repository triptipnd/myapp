pipeline {
    agent any

    environment {
        IMAGE_NAME = "myapp:latest"
        CONTAINER_NAME = "myapp_container"
    }

    stages {

        stage('Checkout') {
            steps {
                // Pull the latest code from GitHub
                git branch: 'main', url: 'https://github.com/triptipnd/myapp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image with your website
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Stop & Remove Existing Container') {
            steps {
                // Stop and remove any running container to avoid conflicts
                sh '''
                docker stop $CONTAINER_NAME 2>/dev/null || true
                docker rm $CONTAINER_NAME 2>/dev/null || true
                '''
            }
        }

        stage('Run Container') {
            steps {
                // Run container on port 80
                sh 'docker run -d -p 80:80 --name $CONTAINER_NAME $IMAGE_NAME'
            }
        }

        stage('Verify Deployment') {
            steps {
                // Quick verification: check if localhost is reachable
                sh 'curl -I http://localhost || true'
            }
        }
    }

    post {
        success {
            echo "Deployment Successful! Open http://localhost to see your website."
        }
        failure {
            echo "Deployment Failed!"
        }
    }
}
