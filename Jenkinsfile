node{
  def mavenHome = tool name : 'maven-3.9.6'
  /*echo "The job name:$(env, JOB_NAME)"
  echo "The build number:$(env, BUILD_NUMBER)"
  echo "The node name:$(env, NODE_NAME)" */
  stage('CheckoutCode'){ 
   git branch: 'release', changelog: false,
  credentialsId: '9cf512a0-b058-48e4-9189-1d53af782bdd', poll: false, url: 'https://github.com/uptimecarrer/MBP-maven-web-application.git'
  }
  stage('BuildArtifact'){      
sh "${mavenHome}/bin/mvn clean package"
}
  stage('SonarQubeReport'){  
sh "${mavenHome}/bin/mvn clean sonar:sonar"
}
   stage('UploadArtifactIntoNexus'){
sh "${mavenHome}/bin/mvn clean deploy"
}
 stage('DeployAppIntoTomcat'){
sshagent(['f69362e7-8005-482f-b157-6ffd1c9ed762']){
sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@3.110.171.157:/opt/tomcat9/webapps"
} 
}
 stage('Email Notification'){
    mail bcc: '', body: '''Hi Team,

Welcome to Uptime Career.....
.......This is MBP-Scripted pipeline.....

Regards,
R Raveendra.''', cc: '', from: '', replyTo: '', subject: 'Script Build is Done ', to: 'rravindra5804@gmail.com'
} 
}
  

