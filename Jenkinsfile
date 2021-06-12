pipeline {
    agent any   
/** parameters {
    gitParameter branchFilter: 'origin/(.*)', defaultValue: 'master', name: 'BRANCH', type: 'PT_BRANCH'
  }**/
   
	    stage('Build and Package') {           	
            steps {
            //  withMaven(maven: 'maven-3.6.3') {           
		 script{
		    sh """
		    // mvn clean test
		    echo "Build"
                """
		 }
	    //}
            }
        }
        stage('Ansible Deploy') {           	
            steps {
               script{              
                sh """
		 // ansible --version
		 // ansible-playbook deployfile.yml
                echo "inside checkout scm branch _1"
		"""
	       }
            }
        }
    }  
}
