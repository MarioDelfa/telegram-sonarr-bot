pipeline {
  agent any
  stages {
    stage('Inicializacion') {
      agent any
      steps {
        sh 'echo patata'
      }
    }
    stage('arranque del bot') {
      steps {
        sh 'node sonarr.js'
      }
    }
  }
}