folder("Whanos base images") {
    displayName('Whanos base images')
    description('to complete')
}

freeStyleJob("Whanos base images/whanos-c") {
    displayName('Whanos c image')
    description('to complete')

    steps {
        shell("echo docker build c image")
        shell("cat /var/lib/jenkins/key.json | docker login -u _json_key_base64 --password-stdin https://europe-west1-docker.pkg.dev")
        shell("docker build -t whanos-c - < Dockerfile.base")
        shell("docker tag whanos-c europe-west1-docker.pkg.dev/western-diorama-401007/whanos-registry/whanos-c:0.01")
        shell("docker push europe-west1-docker.pkg.dev/western-diorama-401007/whanos-registry/whanos-c")
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
