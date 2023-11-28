folder("Whanos base images") {
    displayName('Whanos base images')
    description('to complete')
}

folder("Projects") {
    displayName('Projects')
    description('to complete')
}

freeStyleJob("Whanos base images/whanos-c") {
    displayName('Whanos c image')
    description('to complete')

    steps {
        shell("echo docker build c image")
    }
}

freeStyleJob("Whanos base images/whanos-java") {
    displayName('Whanos java image')
    description('to complete')

    steps {
        shell("echo docker build java image")
    }
}

freeStyleJob("Whanos base images/whanos-javascript") {
    displayName('Whanos javascript image')
    description('to complete')

    steps {
        shell("echo docker build javascript image")
    }
}

freeStyleJob("Whanos base images/whanos-python") {
    displayName('Whanos python image')
    description('to complete')

    steps {
        shell("echo docker build python image")
    }
}

freeStyleJob("Whanos base images/whanos-befunge") {
    displayName('Whanos befunge image')
    description('to complete')

    steps {
        shell("echo docker build befunge image")
    }
}