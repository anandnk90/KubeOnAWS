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
#         stage('Set up infra') {
#		steps {
#	       sh './create-cluster.sh'
#            }
#      }
       stage('Deploy app') {
          steps {
         sh './.deploy-app-on-k8s.sh'
       }
}
         }
     }

