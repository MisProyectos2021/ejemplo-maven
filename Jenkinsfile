   pipeline {
    agent any

        stages{
                    stage("Descargar nexus"){
                        steps{
                            script {
              sh    "curl -X GET -u admin:victor25 http://192.168.0.15:8083/repository/test-nexus/com/devopsusach2020/DevOpsUsach2020/1.0.0/DevOpsUsach2020-1.0.0.jar -O"
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


             stage("Upload to Nexus"){
               
                steps{
                     sh 'echo ${WORKSPACE}'
                    script {
                       nexusPublisher nexusInstanceId: 'nexus_test', nexusRepositoryId: 'test-nexus', packages: [[$class: 'MavenPackage', mavenAssetList: [[classifier: '', extension: '', filePath: "${WORKSPACE}/build/DevOpsUsach2020-0.0.1.jar"]], mavenCoordinate: [artifactId: 'DevOpsUsach2020', groupId: 'com.devopsusach2020', packaging: 'jar', version: '1.0.2']]]                }
             }
            }


  
            
		}
   }	