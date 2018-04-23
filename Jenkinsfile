node {
    stage('Clone repository') {
        git url: 'https://github.com/earnolddev/testapp.git'
    }
    stage('Build image') {
        docker.build("testapp")
    }
    stage ('deploy') {
        sh 'bash deploy.sh'
    }
}
