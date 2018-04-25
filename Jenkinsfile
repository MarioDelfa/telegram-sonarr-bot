pipeline {
  agent any
  stages {
    stage('Inicializacion') {
      agent any
      steps {
        sh '''npm install
'''
      }
    }
    stage('arranque del bot') {
      steps {
        sh 'node sonarr.js'
      }
    }
  }
}