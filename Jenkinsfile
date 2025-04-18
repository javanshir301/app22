pipeline {
    agent any

    environment {
        IMAGE_NAME = 'javanshir1995/devops-lab:app22'
    }

    stages {
        stage('Login to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials') {
                        docker.image("${IMAGE_NAME}").push()
                    }
                }
            }
        }
    }
}


