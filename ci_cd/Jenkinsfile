pipeline {
    parameters{
              string (name: 'testSuite', defaultValue:'', description:'tests executions')
    }
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11' 
        }
    }
    stages {
        stage("clone-repository"){
            steps{
                echo "Cloning repository..."
                git credentialsId: 'git_credentials', url: 'https://github.com/luishernandez25/easyTest.git', branch: 'master'
            }
        }
        stage('Run Test'){
            steps{
                sh "mvn test -Dtest="+ params.testSuite
                }
            }
        }
        post {
            failure {
                mail to: 'oldfox255@gmail.com', subject: 'The Pipeline failed :(', body:'The Pipeline failed :('
            }
    }
}