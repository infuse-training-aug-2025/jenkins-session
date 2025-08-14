pipeline {
    agent any

    stages {
        stage('Clone repo') {
            steps {
                git branch: 'shantanu', url: 'https://github.com/infuse-training-aug-2025/jenkins-session.git'
            }
        }
        stage('Run script') {
            steps {
                bat "one.bat"
            }
        }
    }
    post {
        success {
            echo "Success"
        }
        failure {
            echo "Failure"
        }
        always {
            cleanWs()
        }
    }
    
}
