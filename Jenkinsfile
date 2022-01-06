   pipeline {
    agent any
    stages{
             stage("Compile Code"){
                steps{
                    script {
                        dir("/var/jenkins_home/proyecto/ejemplo-maven/"){
                                sh " ./mvnw clean compile -e"
                         }

                    }
                }
            }
            
         
   
   
   stage("Test Code"){
   
   
                steps{
                    script {
                          dir("/var/jenkins_home/proyecto/ejemplo-maven/"){
                               sh  " ./mvnw clean test -e "
                        }

                    }
                }
            }
            
            stage("Jar Code"){
                steps{
                    script {
                          dir("/var/jenkins_home/proyecto/ejemplo-maven/"){
                               sh  " ./mvnw clean package -e "
                        }

                    }
                }
            }
            
            stage("Run Jar"){
                steps{
                    script {
                         dir("/var/jenkins_home/proyecto/ejemplo-maven/"){
                               sh  "nohup bash mvnw spring-boot:run &"
                        }

                    }
                }
            }
			
		}
   }	