# Terraform code to build a simple Apache webserver

## Youtube
 https://www.youtube.com/watch?v=otQqd7GRVK0

## Git Repository  
https://github.com/sandy4v/WebServer.git

Create an empty repo on the Git and copy the path

```shell     # This will highlight the code in markup language
cd /Users/sandy4v/Desktop/Github/  

##  Common Git commands  
git clone https://github.com/sandy4v/WebServer.git  # This will create a local copy in a Folder called WebServer
git status 
git add .
git commit -m "Commit message"  #committs code to the local repo
git push  #pushes changes to the remote git repo on Github
```

##      Terraform Build 

```shell
cd infra
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy
```
## Jenkins Build
Same TF commands are created as build stages in the Jenkins file
Create a new pipeline job with SCM pointing to the Git
Build
once built then stages can be run via "Run with Parameters"

## WebServer 
A simple Linux EC2 instance will be launched in USE1 region
Apache server installed and started with a simple html file using bootstrap script