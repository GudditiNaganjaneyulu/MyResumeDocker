pipeline {
    agent any 
    stages {
        stage ('code checkout') {
            steps {
             git('https://github.com/GudditiNaganjaneyulu/MyResumeDocker.git')   
            }
        }
        stage ('code build') {
            steps {
             sh('docker build -t gudditi/myresume:1.0 .')   
            }
        }
        stage ('push to docker hub') {
            steps {
             withCredentials([string(credentialsId: 'DokcerPasscode', variable: 'DockerPasscode')]) {
                sh "docker login -u gudditi -p ${DockerPasscode}"

        }  
            sh('docker push gudditi/myresume:1.0')
            }

        }
        stage ('build docker app') {
            steps {
             sh('docker run -dit -p 80:80 --name myresume gudditi/myresume:1.0 ')

            }
        }
        stage ('final check') {
            steps {
             sh('ping -c 3 localhost ')

            }
        }

    }
}
