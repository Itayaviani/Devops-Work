pipeline {
    agent any

    parameters {
        string(name: 'NUMBER', defaultValue: '10', description: 'הכנס מספר לבדיקה')
    }

    stages {
        stage('Make Script Executable') {
            steps {
                script {
                    // הנח הסקריפט בשם fibonacci.sh במאגר
                    sh 'chmod +x fibonacci.sh'
                }
            }
        }

        stage('Run Script') {
            steps {
                script {
                    // הרצת הסקריפט עם הפרמטר שהתקבל
                    sh "./fibonacci.sh ${params.NUMBER} > fibonacci_output.html"
                }
            }
        }

        stage('Publish HTML') {
            steps {
                script {
                    // פרסום פלט ה-HTML
                    publishHTML(target: [
                        allowMissing: false,
                        alwaysLinkToLastBuild: true,
                        keepAll: true,
                        reportDir: '.',
                        reportFiles: 'fibonacci_output.html',
                        reportName: "Fibonacci Report"
                    ])
                }
            }
        }
    }
}
