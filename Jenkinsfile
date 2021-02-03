pipeline{
agent any
tools {
  terraform 'terraform'
}
stages{
      stage('Git SCM'){
         steps{
         git branch: 'main', url: 'https://github.com/vishvaja0630/terraform_trial.git'
         }
      }
     /*stage('Build Docker Image'){
     steps{
       script{
	       dockerImage = docker.build("tomcat:latest")
       }
      }
      }*/
      stage('Terraform Init'){
         steps{
         sh 'terraform init'
         }
      }
      stage('Terraform Plan'){
         steps{
         sh 'terraform plan'
         }
      }
      stage('Terraform Apply'){
         steps{
         sh 'terraform apply --auto-approve'
         }
      }     
}
}
