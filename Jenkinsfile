pipeline {
  agent any
  stages {
    stage('Copia2') {
      steps {
        sh 'cp -Rf * /opt/sonarrbot/'
      }
    }
    stage('arranque del bot') {
      steps {
        sh '''cd /opt/sonarrbot/
make status'''
        dir(path: '/opt/sonarrbot/') {
          sh 'make deploy'
        }

      }
    }
  }
}