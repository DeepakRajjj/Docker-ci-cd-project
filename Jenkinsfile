pipeline {
    agent any
    
    stages {
        stage("Checkout") {
            steps {
                // Checkout the source code from the repository
                checkout scm
            }
        }

        stage("Test") {
            steps {
                // Install npm dependencies and run tests
                bat 'npm install'
                bat 'npm test'
            }
        }

        stage("Build") {
            steps {
                // Build the project
                bat 'npm run build'
            }
        }

        stage("Build Image"){
            steps{
                // Build the Docker image
                bat 'docker build -t my-node-app:1.0 .'
            }
        }

        stage("Push Image"){
            steps{
                // Push the Docker image to a Docker registry (e.g., Docker Hub)
                bat 'docker push my-node-app:1.0'
            }
        }
    }
    
    post {
        success {
            echo 'Build successful!'
            // Optionally, archive artifacts here
        }
        failure {
            echo 'Build failed!'
            // Optionally, send notifications or perform cleanup actions
        }
    }
}
