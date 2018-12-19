pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Hello World'
        git 'https://github.com/deepakarchinnova/sample-project'
      }
     stage('SonarQube analysis') {
    // requires SonarQube Scanner 2.8+
    def scannerHome = tool 'SonarQube Scanner 3.2';
    withSonarQubeEnv('SonarQube') {
      bat "${scannerHome}/bin/sonar-scanner"
    }
    }
  }
}
