node(){
//checkout scm    
         
         stage('compile') {   
              echo ${env.VERSION}
                  echo ${env.version}
                  sh'''
            mvn clean package -Dmy.variable='${env.VERSION}'
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
