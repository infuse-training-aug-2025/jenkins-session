pipeline {
    agent any

    stages {
        stage('Generate Random Number') {
            steps {
                bat 'random_number.bat > number_output.txt'
            }
        }
        stage('Check Number') {
            steps {
                script {
                    // Read the output from the batch file
                    def output = readFile('number_output.txt').trim()
                    // Extract the number using regex
                    def matcher = output =~ /Generated Random Number: (\d+)/
                    if (matcher) {
                        def number = matcher[0][1] as Integer
                        if (number < 30) {
                            error "Number is less than 30 (${number}). Failing the build."
                        } else {
                            echo "Number is ${number}. Build passed."
                        }
                    } else {
                        error "Could not find the generated number in the output."
                    }
                }
            }
        }
    }
}