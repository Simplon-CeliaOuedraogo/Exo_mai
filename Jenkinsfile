pipeline {
    agent any
    stages {
        stage('Pré-Cleanup') {
            steps {
                // Clean before build
                cleanWs()
                echo "Building ${env.JOB_NAME}..."
            }
        }
        stage('Cloning the git') {
            steps {
                sh('''
                git clone https://github.com/Simplon-CeliaOuedraogo/Exo_mai.git
                ''')
            }
        }
    }
    post {
        always {
            // Deconnexion Docker
            sh 'docker logout'
        }
    }
}
