pipeline {
    agent any   
	properties([[$class: 'RebuildSettings', autoRebuild: false, rebuildDisabled: false], parameters([gitParameter(branch: '', branchFilter: '.*', defaultValue: '', description: '', name: 'BRANCH', quickFilterEnabled: false, selectedValue: 'NONE', sortMode: 'NONE', tagFilter: '*', type: 'PT_BRANCH')])])
	 /** parameters {
	    gitParameter branchFilter: 'origin/(.*)', defaultValue: 'master', name: 'BRANCH', type: 'PT_BRANCH'	 
	  }**/
    stages {
	    stage('Checkout') {           	
            steps {
             //git branch: "${params.BRANCH}", url: 'https://github.com/csenapati12/java-tomcat-maven-docker.git'
	    checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '${params.BRANCH}"]], extensions: [], userRemoteConfigs: [[url: 'https://github.com/csenapati12/java-tomcat-maven-docker.git']]]
            }
        }
	    stage('Build and Package') {           	
            steps {
            //  withMaven(maven: 'maven-3.6.3') {           
		 script{
		    sh """
		     mvn clean package
                """
		 }
	    //}
            }
        }
        stage('Ansible Deploy') {           	
            steps {
               script{              
               /** sh """
		  ansible --version
		  ansible-playbook deployfile.yml
                """
		**/
		      //ansiblePlaybook become: true, credentialsId: 'root-credentials', playbook: 'deployfile.yml'
		       ansiblePlaybook credentialsId: 'root-credentials', inventory: 'dev-hosts', playbook: 'deployfile.yml'
	       }
            }
        }
    }  
}
