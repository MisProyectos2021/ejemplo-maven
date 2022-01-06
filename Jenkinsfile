pipeline {
    agent any
    stages{
             stage("Compile Code"){
                steps{
                    script {
                         dir("C:/Users/victo/Desktop/proyecto/ejemplo-maven"){
                               bat "./mvnw.cmd clean compile -e"
                        }

                    }
                }
            }
            
            stage("Test Code"){
                steps{
                    script {
                            dir("C:/Users/victo/Desktop/proyecto/ejemplo-maven"){
                               bat "./mvnw.cmd clean test -e"
                        }

                    }
                }
            }
            
            stage("Jar Code"){
                steps{
                    script {
                            dir("C:/Users/victo/Desktop/proyecto/ejemplo-maven"){
                               bat "./mvnw.cmd clean package -e"
                        }

                    }
                }
            }
            
            stage("Run Jar"){
                steps{
                    script {
                            dir("C:/Users/victo/Desktop/proyecto/ejemplo-maven"){
                                bat "start /min mvnw.cmd spring-boot:run &"
                        }

                    }
                }
            }
            
         
            
    }

}