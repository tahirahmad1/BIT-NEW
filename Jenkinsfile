timestamps {
    node (""){
        try {
            stage("Checkout code") {
                git branch: 'main', url:"https://github.com/tahirahmad1/BIT-NEW.git"
            }
            stage("Build Docker image") {
                sh "docker build . -t bitnami/moodle:latest"
            }
            stage("Run Docker image") {
            
                
                sh "docker run -d -p 8083:8080 bitnami/moodle:latest"
               
        }
        
            currentBuild.result = 'SUCCESS'
        } catch(ex) {
            currentBuild.result = 'FAILURE'
        } finally {
            
        }
    }
}
