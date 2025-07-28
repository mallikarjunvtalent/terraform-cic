// for parameter
// pipeline {
//     agent any

//     parameters {
//         choice(name: 'action', choices: ['apply', 'destroy'], description: 'Choose Terraform action')
//     }

//     stages {
//         stage('Git Checkout') {
//             steps {
//                git branch: 'main', url: 'https://github.com/mallikarjunvtalent/terraform.git'
//             }
//         }

//         stage('Terraform Init') {
//             steps {
//                 dir('day-2_indroduction') {
//                     sh 'terraform init'
//                 }
//             }
//         }

//         stage('Terraform Plan') {
//             steps {
//                 dir('day-2_indroduction') {
//                     sh 'terraform plan'
//                 }
//             }
//         }

//         stage('Terraform Apply/Destroy') {
//             steps {
//                 echo "⚙️ Running: terraform ${params.action} ..."
//                 dir('day-2_indroduction') {
//                     sh "terraform ${params.action} -auto-approve"
//                 }
//             }
//         }
//     }

//     post {
//         success {
//             echo "✅ Terraform ${params.action} completed successfully."
//         }
//         failure {
//             echo "❌ Terraform ${params.action} failed."
//         }
//     }
// }

// for env or directory and parameters  General Scripted
pipeline {
    agent any

    environment {
        TF_DIR = 'day-2_indroduction'  // Define Terraform working directory once
    }

    parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Choose Terraform action')
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/mallikarjunvtalent/terraform.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir(env.TF_DIR) {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir(env.TF_DIR) {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply/Destroy') {
            steps {
                echo "⚙️ Running: terraform ${params.action} ..."
                dir(env.TF_DIR) {
                    sh "terraform ${params.action} -auto-approve"
                }
            }
        }
    }

    post {
        success {
            echo "✅ Terraform ${params.action} completed successfully."
        }
        failure {
            echo "❌ Terraform ${params.action} failed."
        }
    }
}
//############## Scripted Pipeline ################
// properties([
//     parameters([
//         choice(name: 'action', choices: ['apply', 'destroy'], description: 'Choose Terraform action')
//     ])
// ])

// node {
//     def TF_DIR = 'day-2_indroduction'

//     stage('Git Checkout') {
//         git branch: 'main', url: 'https://github.com/mallikarjunvtalent/terraform.git'
//     }

//     stage('Terraform Init') {
//         dir(TF_DIR) {
//             sh 'terraform init'
//         }
//     }

//     stage('Terraform Plan') {
//         dir(TF_DIR) {
//             sh 'terraform plan'
//         }
//     }

//     stage('Terraform Apply/Destroy') {
//         echo "⚙️ Running: terraform ${params.action} ..."
//         dir(TF_DIR) {
//             sh "terraform ${params.action} -auto-approve"
//         }
//     }
// }

