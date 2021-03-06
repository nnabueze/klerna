# Klarna Python engineer assignment
## Introduction

A web service which calculates and provides results for the `fibonacci number`, `Ackermann function` and  `factorial n!`  via a REST API. Also this project is build with python 3 and deploy with terraform to AWS.

## Project requirement / dependency
To see list of dependency, open requirements.txt with in the project folder eg `Python-assessment-N-O-4-4-2022/app/requirements.txt`. Also you can install the dependency by running `pip3 install -r requirements.txt`

Note: Docker is required to build and run the application

### Deployment requirements
- Terraform
- AWS

## How to run project Locally
To build and run the project you can follow the below steps:
### Using docker compose
```
cd Python-assessment-N-O-4-4-2022/app
docker-compose build
docker-compose up -d
```
OR
### Using docker cli
```
cd Python-assessment-N-O-4-4-2022/app
docker build -t image-name .
docker run -p5000:5000 image-name
```
Vist http://localhost:5000 to view the application

## Testing the project
To test (unit test) the project locally, you can create an environment before runing the project. Sample command below:

```
cd Python-assessment-N-O-4-4-2022/app
python3 -m venv env
source env/bin/activate
pip3 install -r requirements.txt
pytest
```

## How to deploy application
To provision infrastructure and deploy follow the below steps:

### Provisioning of ECR and push of container image
This has to been done first before actually deploying the application
```
cd Python-assessment-N-O-4-4-2022/infrastructure/repositories
Terraform init
Terraform plan
Terraform apply --auto-approve
```
### Provisoning infrastructure and deploying application
```
cd Python-assessment-N-O-4-4-2022/infrastructure/environments
Terraform init
Terraform plan
Terraform apply --auto-approve
```
To view the application vist the link printed on the console after you must have applied the last command.

Note: 
- Remote backend is not enable in terraform
- Update the ECR repository url with in the variable.tf file before deploying the actually application.
- No CI/CD pipeline with automated testing implemented for the project.