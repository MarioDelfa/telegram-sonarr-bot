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
        stage('Copia') {
          steps {
            sh '''mkdir /opt/sonarrbot
cp -R * /opt/sonartbot'''
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