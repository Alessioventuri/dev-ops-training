pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
                checkout scm
                sh """
                source /usr/local/robot_env/bin/activate
                python3 -m pip install -r requirements.txt
                """
            }
        },
        stage('Stage 2') {
            steps {
                sh """
                source /usr/local/robot_env/bin/activate
                python3 -m robot --loglevel DEBUG --pythonpath libraries --variable  --exclude excluded  -d ./result tests
                """
            }
        }
    }
}
