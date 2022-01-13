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
                               sh  " ./mvnw clean test -e "
                        

                    }
                }
            }
            
            stage("Jar Code"){
                steps{
                    script {
                               sh  " ./mvnw clean package -e "
                        

                    }
                }
            }
            
            stage("Run Jar"){
                steps{
                    script {
                               sh  "nohup bash mvnw spring-boot:run &"
                               sleep 20

                    }
                }
            }
			
          stage("Testing Application"){
                steps{
                    script {
                               sh  " curl -X GET 'http://localhost:8081/rest/mscovid/test?msg=testing' "
                    }
                }
            }

            
		}
   }	