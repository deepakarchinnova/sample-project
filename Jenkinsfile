pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Hello World'
        git 'https://github.com/deepakarchinnova/sample-project'
      }
    }
    stage('build && SonarQube analysis') {
      steps {
        withSonarQubeEnv('My SonarQube Server') {
          withMaven(maven: 'Maven 3.5') {
            sh 'mvn clean package sonar:sonar'
          }

        }

      }
    }
  }
}