pipeline {
     agent any
     stages {
         stage('Lint py') {
              steps {
                  sh 'echo "Linting app"'
                  sh 'pylint --disable=R,C,W1203 app.py'
              }
         }
     }
}
