pipeline {
     agent any
     stages {
         stage ('Install dependencies'){
             steps{
                 sh 'pip install flask'
                 sh 'pip install pylint'
             }
         }
         stage('Lint py') {
              steps {
                  sh 'echo "Linting app"'
                  sh 'pylint --disable=R,C,W1203 app.py'
                  sh 'echo "Linting Dockerfile"'
                  sh 'hadolint Dockerfile'
              }
         }
     }
}
