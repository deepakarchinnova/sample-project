pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        echo 'Hello World'
        git 'https://github.com/deepakarchinnova/sample-project'
      }
    }
    stage('build && SonarQube analysis') {
      steps {
        withSonarQubeEnv(installationName: 'SonarQube') {
          withMaven(maven: 'Maven-3.3.9') {
            bat 'mvn clean package sonar:sonar'
          }

        }

      }
    }
    stage('Quality Gate') {
      steps {
        timeout(time: 1, unit: 'HOURS') {
          waitForQualityGate(abortPipeline: true)
        }

      }
    }
  }
}