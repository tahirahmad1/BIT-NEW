timestamps {
    node (""){
        try {
            stage("Checkout code") {
                git branch: 'main', url:"https://github.com/tahirahmad1/BIT-NEW.git"
            }
            stage("Build Docker image") {
                sh "docker build . -t frankfurtmoodle:stable"
            }
            stage("Run Docker image") {
                sh "docker stop frankfurtmoodle || true"
                
                sh "docker rm frankfurtmoodle || true"
                
                sh "docker run -d -p 8083:8080 frankfurtmoodle:stable"
               
            
            stage("Build mariadb")
                sh "docker pull  mariadb"
                
                sh "docker run -d --name mariadb"
        }
        
            currentBuild.result = 'SUCCESS'
        } catch(ex) {
            currentBuild.result = 'FAILURE'
        } finally {
            
        }
    }
}
