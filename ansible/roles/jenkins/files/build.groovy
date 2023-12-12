folder("Whanos base images") {
    displayName('Whanos base images')
    description('to complete')
}

freeStyleJob("Whanos base images/whanos-c") {
    displayName('whanos-c')

    steps {
        shell("docker build -t whanos-c - < /var/lib/jenkins/images/c/Dockerfile.base")
    }
}

freeStyleJob("Whanos base images/whanos-java") {
    displayName('whanos-java')

    steps {
        shell("docker build -t whanos-c - < /var/lib/jenkins/images/java/Dockerfile.base")
    }
}

freeStyleJob("Whanos base images/whanos-javascript") {
    displayName('whanos-javascript')

    steps {
        shell("docker build -t whanos-c - < /var/lib/jenkins/images/javascript/Dockerfile.base")
    }
}

freeStyleJob("Whanos base images/whanos-python") {
    displayName('whanos-python')

    steps {
        shell("docker build -t whanos-c - < /var/lib/jenkins/images/python/Dockerfile.base")
    }
}

freeStyleJob("Whanos base images/whanos-befunge") {
    displayName('whanos-befunge')

    steps {
        shell("docker build -t whanos-c - < /var/lib/jenkins/images/befunge/Dockerfile.base")
    }
}

freeStyleJob("Whanos base images/Build all base images") {
    displayName('Build all base images')
    publishers {
        downstream('whanos-c')
        downstream('whanos-java')
        downstream('whanos-javascript')
        downstream('whanos-python')
        downstream('whanos-befunge')
    }
}
