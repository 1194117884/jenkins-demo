pipeline {
  agent any

  environment {
    ENV_NAME = 'env_value'
  }

  tools {
    jdk 'jdk-8'
    gradle 'gradle-6.5.1'
  }

  stages {

    stage("environment") {
      steps {
        echo 'reading something from env'
        echo "${ENV_NAME}"
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