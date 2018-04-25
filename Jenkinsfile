pipeline {
  agent any
  stages {
    stage('Inicializacion') {
      agent {
        node {
          label 'node-1.4'
        }

      }
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