
pipeline {
    agent any
    stages {
        stage('Lint') {
            steps {
                sh 'echo "Linting app"'
                sh 'pylint --disable=R,C,W1203 app/app.py'
            }
        }
        stage('Build docker image') {
            steps {
                sh 'cd app && docker build -t anandnk90/udacitycapstone:v1 .'
            }
        }
        stage('Publish docker image') {
            steps {
                sh './scripts/upload_docker.sh'
            }
        }
        stage('Set up infra') {
            steps {
                sh './scripts/create-cluster.sh'
            }
        }
        stage('Deploy app') {
            steps {
                sh './scripts/deploy-app-on-k8s.sh'
            }
        }
    }
}