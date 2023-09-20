pipeline {
    agent any 
    stages {
        stage('Stage 1') {
            steps {
                // Check out the source code
                checkout scm

                // Set up a Python virtual environment and install requirements
                script {
                    sh """
                    python3 -m venv .venv
                    source .venv/bin/activate
                    python3 -m pip install -r requirements.txt
                    """
                }
            }
        }
        stage('Stage 2') {
            steps {
                // Activate the robot_env virtual environment and run Robot Framework
                script {
                    sh """
                    source /usr/local/robot_env/bin/activate
                    python3 -m robot --loglevel DEBUG --pythonpath libraries --variable YOUR_VARIABLE_NAME --exclude excluded -d ./result tests
                    """
                }
            }
        }
    }
}
