pipeline {
  agent any
  stages {
    stage('Inicializacion') {
      parallel {
        stage('Inicializacion') {
          agent any
          steps {
            sh '''npm install
'''
          }
        }
        stage('mensajes') {
          steps {
            echo 'Pasando por aqui'
            sh 'echo $pwd'
            fileExists 'confog.cfg'
          }
        }
      }
    }
    stage('arranque del bot') {
      steps {
        sh 'node sonarr.js'
      }
    }
  }
}