pipeline {
  agent any
  stages {
    stage('Inicializar') {
      parallel {
        stage('Indicador') {
          steps {
            echo 'Patata'
          }
        }
        stage('Shell prueba') {
          steps {
            sh 'echo prueba'
          }
        }
        stage('Mostrar PWD') {
          steps {
            pwd()
          }
        }
      }
    }
  }
}