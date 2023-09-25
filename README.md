# LambdaDockerTerraform

LambdaDockerTerraform is a project that enables the deployment of containerized Lambdas using Terraform and GitLab CI/CD. This repository provides the necessary code, configuration, and CI/CD pipeline setup to automate the deployment process and manage the infrastructure required for running Lambdas in a containerized environment.

## Features

- **Containerization of Lambdas**: The project leverages Docker containers to package and run Lambdas, allowing for easier management and portability.

- **Infrastructure as Code**: Terraform is used to define and provision the necessary AWS resources, such as Amazon Elastic Container Registry (ECR), Amazon Elastic Container Service (ECS), and AWS Lambda, ensuring consistent and reproducible infrastructure deployments.

- **GitLab CI/CD Integration**: The project includes a GitLab CI/CD pipeline configuration that automates the build, testing, and deployment of the containerized Lambdas, providing a streamlined development and deployment workflow.

- **Scalability and Resilience**: By utilizing AWS services like ECS, Lambdas can be automatically scaled based on demand and benefit from the built-in fault tolerance mechanisms.

## Getting Started

To get started with LambdaDockerTerraform, follow these steps:

1. Clone this repository to your local machine.

2. Install Terraform and ensure it is properly configured with your AWS credentials.

3. Review and update the Terraform configuration files to match your desired deployment settings.

4. Build and push the Docker image for your Lambda functions to an Amazon ECR repository.

5. Configure your GitLab CI/CD pipeline according to your requirements and set up the necessary environment variables.

6. Commit and push your changes to trigger the CI/CD pipeline.

7. Monitor the pipeline execution and verify that the containerized Lambdas are successfully deployed.

## Required GitLab Variables

In this GitLab project, the following environment variables are required:

- **AWS_DEFAULT_REGION**: AWS region for the ECR and other AWS CLI commands.

- **PROJECT_NAME**: Name of the repository or project.

- **AWS_ACCESS_KEY_ID**: AWS access key ID for authentication.

- **AWS_SECRET_ACCESS_KEY**: AWS secret access key for authentication.

- **CI_COMMIT_REF_NAME**: Git branch or ref name used for environment naming and provisioning.

- **BUCKET_NAME**: Name of the S3 bucket used for Terraform backend storage.

- **TF_VAR_CLOUD_REGION**: Cloud region used for Terraform backend configuration.

These variables are referenced in the script sections of the `lambda_image_building` and `provisioning_infra` stages for various purposes such as AWS CLI commands, Docker image building and pushing, Terraform initialization, and provisioning infrastructure.

Please ensure that these variables are properly defined and provided with their respective values in your GitLab CI/CD pipeline configuration or CI/CD variables settings.
