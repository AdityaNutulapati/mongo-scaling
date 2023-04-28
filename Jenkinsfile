def bucketname = null
pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    parameters {
      string description: 'Name of the cluster', name: 'cluster_name'
      string description: 'Tier of the cluster Eg: M20', name: 'cluster_size'
      string description: 'ProjectId', name: 'project_id'
}

    // }
    stages {
        stage('Checkout')
        {
            steps{
                withCredentials([usernameColonPassword(
                    credentialsId:'mongo-credentials',
                    usernameVariable:'PUBLIC_KEY',
                    passwordVariable:'PRIVATE_KEY')])
                    {
                        // sh "TEST=`pwd`"
                        sh "./scaling.sh $PUBLIC_KEY $PRIVATE_KEY $cluster_name $project_id $cluster_size" 
                        // sh "sed -i '' 's/'BUCKET_NAME'/$bucketName/' `pwd`'/QA/S3/Variables/'$file_name'.tfvars'"
                        // sh "sed -i '' 's/'TICKET_NUMBER'/$ticket_number/' `pwd`'/QA/S3/Variables/'$file_name'.tfvars'"
                        // sh "terraform -chdir='QA/S3/'$ticket_number'-'$file_name plan -var-file `pwd`'/QA/S3/Variables/'$file_name'.tfvars'"
                    }
                
                
            }
        }
    }
}
// }