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
        sh 'npm install'
        sh 'npm test'
      }
    }

    stage("Build") {
      steps {
        // Build the project (assuming a build script exists)
        sh 'npm run build'
      }
    }

    stage("Build Image") {
      steps {
        // Build the Docker image
        sh 'docker build -t my-node-app:1.0 .'
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
