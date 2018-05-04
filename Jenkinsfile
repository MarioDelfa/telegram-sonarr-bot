pipeline {
  agent any
  stages {
    stage('Copia') {
      parallel {
        stage('Copia') {
          steps {
            dir(path: '/opt/sonarrbot/')
          }
        }
        stage('Copia2') {
          steps {
            sh 'cp -R * /opt/sonarrbot/'
          }
        }
      }
    }
    stage('arranque del bot') {
      steps {
        sh 'make start_server'
      }
    }
  }
}