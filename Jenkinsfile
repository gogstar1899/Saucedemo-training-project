pipeline {
    agent any

    environment {
        BROWSER = 'chrome'
        PLATFORM = 'MacOS'
        VERSION = 'latest'
    }

    stages {
        stage('Chekout') {
            steps {
                git 'https://github.com/gogstar1899/Saucedemo-training-project.git'
            }
        }

        stage('Setup') {
            steps {
                sh 'gem install bundler'
                sh 'bundle install'
                sh 'webdriver-manager update'
            }
        }

        stage('Test') {
            steps {
                sh "bundle exec rspec ."
            }
        }

        stage('Cleanup') {
            steps {
                sh 'webdriver-manager clean'
            }
        }
    }

    post {
        always {
            junit 'spec/reports/report.xml'
        }
    }
}