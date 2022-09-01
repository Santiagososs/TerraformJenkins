pipeline {
agent any

    stages {
       stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Santiagososs/TerraformJenkinsTest.git']]])            

          }
        }
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
        
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }
        
        stage ("Az Login") {
            steps {
                sh ('az login') 
                
           }
        }
        
        stage ("Az Account Check") {
            steps {
                sh ('az account list') 
                
           }
        }
        
        stage ("terraform Plan") {
            steps {
                sh ('terraform plan') 
                
           }
        }
        stage ("terraform Apply") {
            steps {
                sh ('terraform apply --auto-approve') 
                
           }
        }
    }
}