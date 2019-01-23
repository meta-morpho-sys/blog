pipeline {
  agent any
  stages {
    stage('cloud_bees_pipeline') {
      steps {
        archiveArtifacts(artifacts: '*.rb', allowEmptyArchive: true, fingerprint: true)
      }
    }
    stage('fluffy test') {
      parallel {
        stage('Backend') {
          steps {
            sh './jenkins/test-backend.sh'
            junit 'target/surefire-reports/**/TEST*.xml'
          }
        }
        stage('frontend') {
          steps {
            sh './jenkins/test-backend.sh'
            junit 'target/test-results/**/TEST*.xml'
          }
        }
        stage('Performance') {
          steps {
            sh './jenkins/test-backend.sh'
          }
        }
        stage('Static') {
          steps {
            sh './jenkins/test-backend.sh'
          }
        }
      }
    }
  }
}