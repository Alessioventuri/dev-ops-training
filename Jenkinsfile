pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                // Check out the source code
                checkout scm

                // Set up a Python virtual environment and install requirements

                bat 'python -m venv .venv'
                bat '.venv\\Scripts\\activate'
                bat 'python -m pip install -r requirements.txt'
            }
        }
        stage('Stage 2') {
            steps {
                // Activate the robot_env virtual environment and run Robot Framework
                bat '.venv\\Scripts\\activate'
                bat 'python -m robot --loglevel DEBUG -d .\\result tests'
            }
        }
    }
}