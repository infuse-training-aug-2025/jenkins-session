pipeline {
    agent any

    environment {
        REPO_URL = 'https://github.com/infuse-training-aug-2025/jenkins-session.git'
        BRANCH_NAME = 'arsh'
    }

    stages {
        stage('Checkout') {
            steps {
                dir('workspace') {
                    git branch: "${BRANCH_NAME}", url: "${REPO_URL}"
                }
            }
        }

        stage('Generate Number') {
            steps {
                dir('workspace') {
                    bat 'generate_number.bat'
                }
            }
        }

        stage('Run Tests') {
            steps {
                dir('workspace') {
                    // Ensure Python is installed and pytest is available
                    bat 'pytest test_number.py'
                }
            }
        }
    }

    post {
        success {
            echo '✅ Number is valid (>=30). Pipeline passed.'
        }
        failure {
            echo '❌ Number is too low. Pipeline failed.'
        }
        always {
            echo '🧹 Cleaning workspace...'
            deleteDir()
        }
    }
}
