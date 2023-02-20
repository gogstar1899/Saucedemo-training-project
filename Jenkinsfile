pipeline {
    agent any
    stages {
        stage('Verify browser is installed')
            step {
                sh 'google-chrome --version'
            }
    }
    stage('Run tests')
        steps {
            sh 'bundle exec rspec .'
        }
}