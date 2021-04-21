pipeline {
    agent any
    environment {
        MS_CREDS = credentials('MS_CREDS')
    }

    stages {
        stage('Exec') {
            steps {
                sh '''
                ./setup.sh
                ./run_docker.sh
                '''
            }
        }
    }
}