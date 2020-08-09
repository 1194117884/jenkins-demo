pipeline {
  agent any

  environment {
    ENV_NAME = 'env_value'
    FORMAT_DATE = getFormatDate()
  }

  tools {
    jdk 'jdk-8'
    gradle 'gradle-6.5.1'
  }

  stages {

    stage("environment") {
      steps {
        echo 'reading something from env...'

        echo "${ENV_NAME}"
        echo "${env.ENV_NAME}"
        echo 'wrong way read environment: ${ENV_NAME}'

        echo "reading something from execute shell:${FORMAT_DATE}"
      }
    }

    stage("build") {
      steps {
        echo 'building the application...'
      }
    }
    stage("test") {
      steps {
        echo 'testing the application...'
      }
    }
    stage("deploy") {
      steps {
        echo 'deploying the application...'
      }
    }
  }

  post {
    always {
      echo 'something always run after stages'
    }
    success {
      echo 'something run after stages success'
    }
    failure {
      echo 'something run after stages failure'
    }
  }

}

def getFormatDate() {
    def new_version = sh script: 'echo $(date +%y%m%d%H%M%S)', returnStdout: true
    return new_version
}