timestamps {
    node (""){
        try {
            stage("Checkout code") {
                git branch: 'main', url:"https://github.com/tahirahmad1/BIT-NEW.git"
            }
            stage("Build Docker image") {
                sh "docker build . -t bitnamimoodle"
            }
            stage("Run Docker image") {
            
                sh  "docker stop bitnamimoodle || true"
                
                sh  "docker rm bitnamimoodle || true"
                
               withCredentials([usernamePassword(credentialsId: 'testid', usernameVariable: 'USER',passwordVariable:'PASS')]) {
                sh "docker run -d --name=bitnamimoodle --build-arg EXTRA_LOCALES=de_DE.UTF-8 UTF-8 -p 8083:8443 -e MOODLE_DATABASE_HOST=mariadb_db_1 -e MOODLE_DATABASE_PORT_NUMBER=3306 -e MOODLE_DATABASE_USER=$USER -e MOODLE_DATABASE_PASSWORD=$PASS -e MOODLE_DATABASE_NAME=bitnamimoodle --network moodle --volume moodle_data:/bitnami/moodle bitnamimoodle:latest"
               }

             
                

                    
               
               
        }
        
            currentBuild.result = 'SUCCESS'
        } catch(ex) {
            currentBuild.result = 'FAILURE'
        } finally {
            
        }
    }
}
