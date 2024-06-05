// Jenkinsfile solution based on the pipeline plugin:
// https://www.jenkins.io/solutions/pipeline/

// Results are output in SARIF format & processed using the Warnings NG plugin:
// https://plugins.jenkins.io/warnings-ng/

// Please read the contents of this file carefully & ensure the URLs, tokens etc match your organisations needs.

pipeline {
    agent any

    // Requires a configured NodeJS installation via https://plugins.jenkins.io/nodejs/
    tools { nodejs "NodeJS 18.4.0" }

    stages {
          stage('Download Snyk CLI') {
            steps {
                sh '''
                    latest_version=$(curl -Is "https://github.com/snyk/snyk/releases/latest" | grep "^location" | sed s#.*tag/##g | tr -d "\r")
                    echo "Latest Snyk CLI Version: ${latest_version}"

                    snyk_cli_dl_linux="https://github.com/snyk/snyk/releases/download/${latest_version}/snyk-linux"
                    echo "Download URL: ${snyk_cli_dl_linux}"

                    curl -Lo ./snyk "${snyk_cli_dl_linux}"
                    chmod +x snyk
                    ls -la
                    ./snyk -v
                '''
            }
        }

    }
} 
