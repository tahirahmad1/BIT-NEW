timestamps {
    node (""){
        try {
            stage("Checkout code") {
                git branch: 'main', url:"https://github.com/tahirahmad1/BIT-NEW.git"
            }
            stage("Build Docker image") {
                sh "docker build . -t bitnamimoodle:latest"
            }
            stage("Run Docker image") {
            
                
                sh "docker run -d -p 8083:8080 bitnamimoodle:latest"
                
                sh  "docker stop bitnamimoodle || true"
                
                sh  "docker rm bitnamimoodle || true"
               
        }
        
            currentBuild.result = 'SUCCESS'
        } catch(ex) {
            currentBuild.result = 'FAILURE'
        } finally {
            
        }
    }
}
