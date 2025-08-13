pipeline {
    agent any

    environment {
        REPO = 'https://github.com/infuse-training-aug-2025/jenkins-session.git'
        BRANCH = 'Janardan'
        DIR = 'repo-workspace'
    }

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning the repository...'
                dir("${env.DIR}") {
                    git branch: "${env.BRANCH}", url: "${env.REPO}"
                }
            }
        }

        stage('Run Batch Script') {
            steps {
                echo 'Executing BAT file...'
                dir("${env.DIR}") {
                    bat 'random_check.bat'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully ✅'
        }
        failure {
            echo 'Pipeline failed ❌'
        }
        always {
            echo 'Cleaning up workspace...'
            deleteDir() // Deletes entire workspace
        }
    }
}
