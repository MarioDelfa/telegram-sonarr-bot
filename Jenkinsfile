pipeline {
  agent any
  stages {
    stage('Copia') {
      steps {
        ws(dir: '/opt/sonarrbot')
      }
    }
    stage('arranque del bot') {
      steps {
        sh 'make start_server'
      }
    }
  }
}