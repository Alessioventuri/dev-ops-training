pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                // Check out the source code
                checkout scm

                // Set up a Python virtual environment and install requirements
                bat """
                python -m venv .venv
                .venv\\Scripts\\activate
                python -m pip install -r requirements.txt
                """
            }
        }
        stage('Stage 2') {
            steps {
                // Activate the robot_env virtual environment and run Robot Framework
                bat """
                .venv\\Scripts\\activate
                python -m robot --loglevel DEBUG --pythonpath libraries --variable YOUR_VARIABLE_NAME --exclude excluded -d .\\result tests
                """
            }
        }
    }
}