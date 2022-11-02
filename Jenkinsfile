pipeline{

agent any

tools{
maven 'maven3.8.6'
 }
stages{
    stage('checkout'){
      steps{
        git 'https://github.com/devillierscbe/Ansible-Deployment.git'
       }
    }
    stage('MavenBuild'){
      steps{
        sh "mvn clean package"
       }
    }
    stage('TomcatDeploy'){
      steps{
        ansiblePlaybook credentialsId: 'Tomcat', disableHostKeyChecking: true, installation: 'ansible', inventory: 'ans.inv', playbook: 'deploy.yml'
       }
    }
  }
} 
