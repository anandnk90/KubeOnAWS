
pipeline {
     agent any
     stages {
         stage('Lint') {
              steps {
                  sh 'echo "Linting app"'
                  sh 'pylint --disable=R,C,W1203 app.py'
              }
         }
         stage('Build docker image') {
              steps {
                  sh 'whoami'
                  sh 'docker build -t anandnk90/udacitycapstone .'
              }
         }
         stage('Publish docker image') {
              steps {
                  sh './upload_docker.sh'
              }
         }
    }
}

