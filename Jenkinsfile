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
        sh 'make start_server'
      }
    }
  }
}