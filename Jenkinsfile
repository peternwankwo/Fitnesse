pipeline {
    agent any
	
	tools {
        maven 'maven'
    }
    stages{
        stage('Setup Fitness'){
            steps{
                //bat "mvn clean package"
				
				// -t is tag 
				bat "docker build --t FitnesseServer ."
				
				//bat "docker container run --rm -p 8787:80 FitnesseServer"
				               
            }

        }
    }
}