pipeline {
    agent any

    stages {
        stage('Check Tools') {
            steps {
                bat 'docker --version'
                bat 'kubectl version --client'
                bat 'kubectl get nodes'
            }
        }

        stage('List Files') {
            steps {
                bat 'dir'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t python-flask-app:1.0 .'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                bat 'kubectl apply -f k8s/'
                bat 'kubectl get pods'
                bat 'kubectl get svc'
            }
        }
    }
}
