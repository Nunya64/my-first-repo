pipeline {
  agent any
  stages {
    stage("Clone Repository") {
      steps {
        git url: "git@github.com:Nunya64/my-first-repo.git", credentialsId: "github-ssh", branch: "main"
      }
    }
    stage("Run Script") {
      steps {
        sh "./test-script.sh"
      }
    }
  }
}
