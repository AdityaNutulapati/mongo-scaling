def bucketname = null
pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    parameters {
      string description: 'Name of the cluster', name: 'cluster_name'
      string description: 'Tier of the cluster Eg: M20', name: 'cluster_size'
}

    // }
    stages {
        stage('Checkout')
        {
            steps{
                sh "./scaling.sh $cluster_name $cluster_size"
                
            }
        }
    }
}
// }