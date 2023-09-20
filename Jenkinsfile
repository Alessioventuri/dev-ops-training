timestamps{
    execStage("Installing dependencies"){
        catchError(stageResult: 'UNSTABLE', buildResult: currentBuild.result) {
            checkout scm
            sh """
            source /usr/local/robot_env/bin/activate
            python3 -m pip install -r requirements.txt
            """
        }
    }
    execStage("Running Tests"){
        catchError(stageResult: 'UNSTABLE', buildResult: 'FAILURE') {
            sh """
            source /usr/local/robot_env/bin/activate
            python3 -m robot --loglevel DEBUG --pythonpath libraries --variable  --exclude excluded  -d ./result tests
            """
            }
    }
}