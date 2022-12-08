timestamps {
    node (""){
        try {
            stage('heko') {
                environment {
                    MOODLE_DATABASE_PASSWORD = credentials('testid')
                }
            }
            stage("Checkout code") {
                git branch: 'main', url:"https://github.com/tahirahmad1/BIT-NEW.git"
            }
            stage("Build Docker image") {
                sh "docker build . -t bitnamimoodle"
            }
            stage("Run Docker image") {
            
                sh  "docker stop bitnamimoodle || true"
                
                sh  "docker rm bitnamimoodle || true"
                
                sh "docker run -d --name=bitnamimoodle -p 8083:8443 -e MOODLE_DATABASE_HOST=mariadb_db_1 -e MOODLE_DATABASE_PORT_NUMBER=3306 -e MOODLE_DATABASE_USER=moodle -e MOODLE_DATABASE_PASSWORD=$testid -e MOODLE_DATABASE_NAME=bitnamimoodle --network=moodle bitnamimoodle:latest"
                    
               
               
        }
        
            currentBuild.result = 'SUCCESS'
        } catch(ex) {
            currentBuild.result = 'FAILURE'
        } finally {
            
        }
    }
}
