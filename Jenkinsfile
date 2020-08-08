pipeline {
  agent any

  tools {
    jdk 'jdk-8'
    gradle 'gradle-6.5.1'
  }

  stages {
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
