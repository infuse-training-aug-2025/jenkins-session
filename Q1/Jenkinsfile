pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'Deepak', url: 'https://github.com/infuse-training-aug-2025/jenkins-session.git'
            }
        }
        stage('Run Batch Script') {
            steps {
                script {
                    def output = bat(script: 'Q1\\Random_Number.bat', returnStdout: true).trim()
                    def lines = output.readLines()
                    def number = lines[-1].toInteger()
                    echo "Random number: ${number}"

                    if (number < 30) {
                        error("FAIL: Number is less than 30")
                    } else {
                        echo "PASS: Number is 30 or more"
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded! The number was 30 or more.'
        }
        failure {
            echo 'Pipeline failed! The number was less than 30.'
        }
        always {
            cleanWs()
        }
    }
}