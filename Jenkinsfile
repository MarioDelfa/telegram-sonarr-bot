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
            sh '''echo prueba
cp -Rf * /opt/sonarrbot/'''
          }
        }
      }
    }
    stage('Cambio WS') {
      steps {
        dir(path: '/opt/sonarrbot/')
      }
    }
    stage('Copia de configuracion') {
      steps {
        sh 'npm install'
      }
    }
  }
}