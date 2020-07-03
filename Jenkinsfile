
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
                  sh 'whoami'
                  sh 'cd app && docker build -t anandnk90/udacitycapstone .'
              }
         }
         stage('Publish docker image') {
              steps {
                  sh './app/upload_docker.sh'
              }
         }
        
    }
}

