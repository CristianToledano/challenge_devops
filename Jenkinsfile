pipeline {
    agent any
    parameters{
              string (name: 'testSuite', defaultValue:'', description:'tests executions')
    }
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage("clone-repository"){
            steps{
                deleteDir()
                echo "Cloning repository..."
                git credentialsId: 'git_credentials', url: 'https://github.com/luishernandez25/easyTest.git', branch: 'master'
            }
        }
    stage('Run Test'){
        steps{
            sh "mvn test -Dtest="+ params.testSuite + "DfailIfNoTests=false"
            }
        }
    }
}



PageObject.java