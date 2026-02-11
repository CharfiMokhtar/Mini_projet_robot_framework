pipeline {
    agent any

    environment {
        TOKEN = credentials('TOKEN')
        JAVA_TOOL_OPTIONS = "-Dfile.encoding=UTF-8"
        LANG = "fr_FR.UTF-8"
        LC_ALL = "fr_FR.UTF-8"
    }

    stages {

        stage('Build & Test') {
            steps {
                echo 'Execution des tests Robot Framework...'
                bat "robot -d results tests/"
            }
        }
    }

    post {
        always {
            echo "Importation des resultats d'execution vers xray"
            bat  'curl -H "Content-Type: text/xml" -X POST -H "Authorization: Bearer %TOKEN%"  --data @"results/output.xml" https://xray.cloud.getxray.app/api/v2/import/execution/robot?projectKey=POEI2'
        }

        success {
            echo 'Tests exécutés avec succès 🎉'
        }

        failure {
            echo 'Des tests ont échoué ❌'
        }
    }
}
