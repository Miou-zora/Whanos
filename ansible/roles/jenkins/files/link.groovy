folder("Projects") {
    displayName('Projects')
    description('to complete')
}

freeStyleJob("link-project") {
    parameters {
        stringParam('REPOSITORY_URL', null, 'Git repository url to bind, ex:"https://github.com/jogendra/example-ios-apps.git"')
        stringParam('DISPLAY_NAME', null, 'Display name for the job')
        credentialsParam('GIT_CREDENTIALS') {
            description('Git credentials to bind')
        }
    }
    steps {
        dsl ({
            text('''
                freeStyleJob(\"Projects/$DISPLAY_NAME\") {
                    scm {
                        git {
                            remote {
                                name("origin")
                                url("$REPOSITORY_URL")
                                credentials("$GIT_CREDENTIALS")
                            }
                        }
                    }
                    triggers {
                        scm("* * * * *")
                    }
                    steps {
                        shell("/var/lib/jenkins/./deploy /var/lib/jenkins/workspace/Projects/\\"$DISPLAY_NAME\\"")
                    }
                    wrappers {
                        preBuildCleanup()
                    }
                }
            ''')
        })
    }
}