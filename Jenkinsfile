pipeline {
    agent any

    stages {

        stage('Build & Test') {
            steps {
                echo 'Execution des tests Robot Framework...'
                bat "robot -d results tests/"
            }
        }
    }

    post {
        success {
            echo 'Tests exécutés avec succès 🎉'
        }

        failure {
            echo 'Des tests ont échoué ❌'
        }
    }
}
