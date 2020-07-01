pipeline {
     agent any
     stages {
         stage('Lint') {
              steps {
                  sh 'echo "Linting app"'
                  sh 'pylint --disable=R,C,W1203 app.py'
                  sh 'eksctl'
              }
         }
         stage('Set up infra') {
		steps {
	       sh 'sh ./create-cluster.sh'
             }
        }
         }
     }

