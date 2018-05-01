pipeline {
  agent any
  stages {
    stage('Copia') {
      steps {
        dir(path: '/opt/sonarrbot')
      }
    }
    stage('arranque del bot') {
      steps {
        sh 'make start_server'
      }
    }
  }
}