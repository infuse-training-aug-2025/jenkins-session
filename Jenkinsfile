pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'Shreyas', url: 'https://github.com/infuse-training-aug-2025/jenkins-session.git'
            }
        }
        stage('Run batch script') {
            steps {
                script {
                    def output = bat(script: 'random_number.bat', returnStdout: true).trim()
                    def number = output as Integer
                    if (number < 30) {
                        error "Number is less than 30 (${number}). Failing the build."
                    } else {
                        echo "Number is ${number}. Build passed."
                    }
                }
            }
        }
    }
    post {
        always {
            echo "Cleaning up workspace..."
            deleteDir()
        }
    }
}