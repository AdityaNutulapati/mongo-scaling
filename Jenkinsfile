def bucketname = null
pipeline{
    agent any
//     environment {
//     MARIADB_CREDS=credentials('mariadb-creds')
//   }
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
                // dir("/opt/homebrew/bin/brew")
                // sh chdir="/opt/homebrew/bin/brew"
                sh "pwd"
                // withCredentials([usernameColonPassword(credentialsId: '3995ca66-542b-4938-b123-c2213c710c16', usernameVariablee: 'USER',passwordVariable:'PASS')]) {
                //     sh "sudo apt-get update"
                //    sh 'atlas --version'
                //    sh 'xcode-select --install'
                //    sh ''
                // }

                
                // sh "which brew"
                // sh "brew install mongodb-atlas"
                // sh "chmod +x scaling.sh"
                // sh "atlas --version"
                sh "./scaling.sh $cluster_name $cluster_size"
                
            }
        }
    }
}
// }