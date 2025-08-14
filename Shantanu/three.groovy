pipeline {
    agent any

    stages {
        stage("Parallel tasks"){parallel {
            stage('Task 1') {
                steps {
                    echo "5 seconds" 
                    sleep 5
                }
            }
            stage('Task 2') {
                steps {
                    echo "5 seconds" 
                    sleep 15
                }
            }
          }}
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
