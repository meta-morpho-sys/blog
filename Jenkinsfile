pipeline {
  agent any
  stages {
    stage('cloud_bees_pipeline') {
      steps {
        archiveArtifacts(artifacts: '*.rb', allowEmptyArchive: true, fingerprint: true)
      }
    }
  }
}