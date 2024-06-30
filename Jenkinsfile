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
                    // הנח הסקריפט בשם Script.sh במאגר
                    sh 'chmod +x Script.sh'
                }
            }
        }

        stage('Run Script') {
            steps {
                script {
                    // הרצת הסקריפט עם קלט קבוע מראש
                    sh './Script.sh <<EOF\n10\nEOF'
                }
            }
        }
    }
}
