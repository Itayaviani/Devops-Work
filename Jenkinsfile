pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // נניח שהסקריפט נמצא במאגר Git
                git 'https://github.com/Itayaviani/Devops-Work.git'
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
                    // הרצת הסקריפט עם קלט קבוע מראש
                    sh './fibonacci.sh <<EOF\n10\nEOF'
                }
            }
        }
    }
}
