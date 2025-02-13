pipeline {
    agent any
    stages {
        stage('Code') {
            steps {
                checkout scm
            }
        }
        stage('Install') {
            steps {
                sh 'docker build -t flask-app .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 5001:5001 flask-app'
            }
        }
    }
}
