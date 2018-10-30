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
				bat "docker build -t fitnesseserver ."
				
				bat "docker container run -v /tmp:/tmp --rm -p 8787:80 fitnesseserver "
				
				
				               
            }

        }
    }
}