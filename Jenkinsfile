pipeline {
     agent any
     stages {
         stage('Lint') {
              steps {
                  sh 'echo "Linting app"'
                  sh 'pylint --disable=R,C,W1203 app.py'
              }
         }
         stage('Set up infra') {
		steps {
	      sh 'eksctl'
            }
      }
       stage('Deploy app') {
          steps {
         sh './.deploy-app-on-k8s.sh'
       }
}
         }
     }

