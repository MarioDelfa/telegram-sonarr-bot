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
cp -R * /opt/sonarrbot/'''
          }
        }
        stage('Mostrar PWD') {
          steps {
            pwd(tmp: true)
          }
        }
        stage('Cambio WS') {
          steps {
            dir(path: '/opt/sonarrbot/')
            fileExists '/opt/sonarrbot/config/confog.json'
          }
        }
      }
    }
  }
}