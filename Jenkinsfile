pipeline {
  agent any
  stages {
    stage('Copia') {
      steps {
        sh '''mkdir /opt/sonarrbot
cp -R * /opt/sonartbot'''
      }
    }
    stage('arranque del bot') {
      steps {
        sh 'make start_server'
      }
    }
  }
}