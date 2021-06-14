pipeline {
   agent { label "$NODE" }
      parameters {
         gitParameter branchFilter: 'origin/(.*)', defaultValue: 'master', name: 'BRANCH', type: 'PT_BRANCH_TAG'
         choice(choices: ['master', 'test'], name: 'NODE')
      }
  
    stages{
	/**    stage('Checkout') {           	
            steps {
             git branch: "${params.BRANCH}", url: 'https://github.com/csenapati12/java-tomcat-maven-docker.git'
		
            }
        }**/
	   stage('build'){
	   steps{
	       script{
    		   configFileProvider (  
    			   [configFile(fileId: 'manh-artifactory-global', variable: 'MAVEN_SETTINGS')]) {
    				   sh "'mvn' -s \"$MAVEN_SETTINGS\" -Dmaven.test.skip=true clean deploy -U -B"
    		   }
	       }   
          }
      }  
    }  
}
