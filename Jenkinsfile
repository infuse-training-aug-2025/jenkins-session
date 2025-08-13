pipeline {
    agent any

    environment {
        REPO_URL = 'https://github.com/infuse-training-aug-2025/jenkins-session.git'
        BRANCH = 'Atharva'  // Your pushed branch with the BAT file
        BAT_FILE = 'Generate_random.bat' // Path to your BAT file relative to repo root
        LOG_FILE = 'pipeline_log.txt'
    }

    stages {
        stage('Clone Repo & Checkout Branch') {
            steps {
                script {
                    echo "Cloning repo and checking out branch: ${BRANCH}"
                    checkout([$class: 'GitSCM', 
                        branches: [[name: "refs/heads/${BRANCH}"]],
                        userRemoteConfigs: [[url: "${REPO_URL}"]]
                    ])
                }
            }
        }

        stage('Run BAT File') {
            steps {
                script {
                    echo "Running BAT file: ${BAT_FILE}"
                    // Run the BAT file and capture output
                    def batReturn = bat(script: "${BAT_FILE}", returnStatus: true)

                    if (batReturn != 0) {
                        error "BAT file failed with exit code ${batReturn}"
                    }
                }
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully."
            writeFile file: "${LOG_FILE}", text: "SUCCESS: BAT file ran successfully at ${new Date()}"
        }
        failure {
            echo "Pipeline failed."
            writeFile file: "${LOG_FILE}", text: "FAILURE: BAT file failed at ${new Date()}"
        }
        always {
            // Cleanup workspace
            echo "Cleaning up workspace."
            cleanWs()
        }
    }
}
