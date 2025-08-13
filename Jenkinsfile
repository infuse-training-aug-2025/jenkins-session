pipeline {
    agent any

    environment {
        REPO_URL = 'https://github.com/infuse-training-aug-2025/jenkins-session.git'
        BRANCH_NAME = 'samarth'
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
                    bat 'random_nummber.bat'
                }
            }
        }

        stage('Run Tests') {
            steps {
                dir('workspace') {
                    script {
                        def number = readFile('number.txt').trim().toInteger()
                        echo "Number read from file: ${number}"
                        if (number < 30) {
                            error "Test failed: Number ${number} is less than 30"
                        } else {
                            echo "Test passed: Number ${number} is 30 or greater"
                        }
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Number is valid. Pipeline passed.'
        }
        failure {
            echo 'Validation failed or number was too low. Pipeline failed.'
        }
        always {
            echo 'Cleaning workspace...'
            deleteDir()
        }
    }
}