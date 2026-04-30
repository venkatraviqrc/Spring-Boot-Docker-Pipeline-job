pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t sampledemo .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop sampledemo-container || true'
                sh 'docker rm sampledemo-container || true'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8081:8080 --name sampledemo-container sampledemo'
            }
        }
    }
}
