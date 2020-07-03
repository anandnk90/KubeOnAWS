# Deploying a hello world flask app on a Amazon EKS

## Summary
The project uses a Jenkins pipeline to lint a simple flask app, build a docker image of the app, deploy the docker image and then deploy the app on a Kubernetes cluser on Amazon EKS. A rolling deployment strategy is used to deploy the app.

## How it works
A Jenkins pipeline is triggered every time a commit is made to this repository.

## Files in repository
| File/Directory | Use |
|----------------|-----|
| app | directory containing app, requirements file and dockerfile |
| scripts | directory containing scripts to upload docker image, create and deploy kubernetes cluster on aws |
| jenkinsfile | file detailing the stages of the jenkins pipeline |
