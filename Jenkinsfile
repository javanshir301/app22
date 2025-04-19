pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = 'dockerhub-credentials'  // Jenkins Credentials ID
    }

    stages {
        stage('Login to Docker Hub') {
            steps {
                script {
                    // Docker Hub-a giriş etmək üçün credentials istifadə edilir
                    docker.withRegistry('https://index.docker.io/v1/', credentialsId: env.DOCKER_HUB_CREDENTIALS) {
                        // Docker əmrləri burada işləyəcək
                        sh 'docker build -t javanshir1995/app22 .'
                        sh 'docker push javanshir1995/app22'
                    }
                }
            }
        }
    }
}

