pipeline {
    agent any

    parameters {
        string(name: 'NUMBER', defaultValue: '10', description: 'הכנס מספר לבדיקה')
    }

    stages {
        stage('Clone Repository') {
            steps {
                // נניח שהסקריפט נמצא במאגר Git
                git 'https://github.com/your-repo/your-script-repo.git'
            }
        }

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
