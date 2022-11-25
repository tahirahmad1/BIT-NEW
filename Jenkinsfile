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
                
                sh "docker run -d --link=some-mariadb --name=bitnamimoodle -p 8083:8443 -e MOODLE_DATABASE_HOST=some-mariadb -e MOODLE_DATABASE_PORT_NUMBER=3306 -e MOODLE_DATABASE_USER=example-user -e MOODLE_DATABASE_PASSWORD=my_cool_secret -e MOODLE_DATABASE_NAME=fra --network=moodle bitnamimoodle:latest"
                    
               
               
        }
        
            currentBuild.result = 'SUCCESS'
        } catch(ex) {
            currentBuild.result = 'FAILURE'
        } finally {
            
        }
    }
}
