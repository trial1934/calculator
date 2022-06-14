pipeline {
	agent any
	tools {
    	maven 'my_mvn'
	}
	stages {
    	stage("Checkout") {   
        	steps {               	 
            	git url: 'https://github.com/akshu20791/calculator'          	 
           	 
        	}    
    	}
    	stage('Build') {
        	steps {
        	bat "mvn compile"  	 
        	}
    	}
   	 
    	stage("Unit test") {          	 
        	steps {  	 
            	bat "mvn test"          	 
       	}
}
}
}
