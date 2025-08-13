pipeline {
    agent any

    environment {
        BATCH_FILE = 'generate_random_no.bat'
        NUMBER_FILE = 'number.txt'
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage('Run Batch File') {
            steps {
                echo 'Running the batch file...'
                bat "${BATCH_FILE}"
            }
        }

        stage('Read and Validate Number') {
            steps {
                script {
                    def number = readFile("${NUMBER_FILE}").trim()
                    echo "Random number is: ${number}"

                    if (number.isInteger()) {
                        int num = number.toInteger()
                        if (num < 30) {
                            error "Number is below 30 — Failing pipeline."
                        } else {
                            echo "Number is 30 or above — Proceeding."
                        }
                    } else {
                        error "Invalid number output: '${number}'"
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded.'
        }
        failure {
            echo 'Pipeline failed.'
        }
        always {
            echo 'Cleaning up workspace...'
            deleteDir()
        }
    }
}
