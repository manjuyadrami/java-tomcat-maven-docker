node(){
//checkout scm    
         
         stage('compile') {   
                  sh'''
            mvn clean package -Dmy.variable=$VERSION
         echo "compile"
         '''
        }
         stage('test') {         
         echo "test"
        }
         
stage('Maven Build') {         
        
        }
         stage('deploy to nexus') {         
         echo "deploy"
        }
         
stage('Docker Build') {         
       echo "Docker build"
        }
 }
