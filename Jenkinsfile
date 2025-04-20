
pipeline {
    agent { node { label 'Agen-mahesh'}}

    stages {

        stage('Init') {
            steps {
                sh '''
                        terraform init
                   '''
                // Example: Compile code or install dependencies
                
            }
        }

        stage('Plan') {
            steps {
                sh '''
                        terraform plan
                   '''
                // Example: Run test scripts or tools like pytest, JUnit, etc.
                
            }
        }

        
    }

    post {
        always {
            echo '✅ Pipeline Completed.'
        }
        success {
            echo '🎉 Pipeline successful!'
        }
        failure {
            echo '❌ Pipeline failed. Check logs!'
        }
    }
}