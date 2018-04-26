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
            sh '''echo $pwd
env
echo whoami'''
            fileExists '/opt/sonarrbot/config.cfg'
          }
        }
        stage('Verificacion-Fichero') {
          steps {
            waitUntil() {
              fileExists '/opt/sonarrbot/sonar.js'
            }

            ws(dir: '/opt/sonarrbot') {
              fileExists '/opt/sonarrbot/sonar.js'
            }

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