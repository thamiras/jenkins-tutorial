pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker build -t 679701358486.dkr.ecr.us-west-2.amazonaws.com/jenkins_ecr:number ./"
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh "docker push 679701358486.dkr.ecr.us-west-2.amazonaws.com/jenkins_ecr:number"
            }
        }
    }
}