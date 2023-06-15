**LambdaDockerTerraform**

LambdaDockerTerraform is a project that enables the deployment of containerized Lambdas using Terraform and GitLab CI/CD. This repository provides the necessary code, configuration, and CI/CD pipeline setup to automate the deployment process and manage the infrastructure required for running Lambdas in a containerized environment.

**Features**

Containerization of Lambdas: The project leverages Docker containers to package and run Lambdas, allowing for easier management and portability.

Infrastructure as Code: Terraform is used to define and provision the necessary AWS resources, such as Amazon Elastic Container Registry (ECR), Amazon Elastic Container Service (ECS), and AWS Lambda, ensuring consistent and reproducible infrastructure deployments.

GitLab CI/CD Integration: The project includes a GitLab CI/CD pipeline configuration that automates the build, testing, and deployment of the containerized Lambdas, providing a streamlined development and deployment workflow.

Scalability and Resilience: By utilizing AWS services like ECS, Lambdas can be automatically scaled based on demand and benefit from the built-in fault tolerance mechanisms.

**Getting Started**

To get started with LambdaTerra, follow these steps:

Clone this repository to your local machine.

Install Terraform and ensure it is properly configured with your AWS credentials.

Review and update the Terraform configuration files to match your desired deployment settings.

Build and push the Docker image for your Lambda functions to an Amazon ECR repository.

Configure your GitLab CI/CD pipeline according to your requirements and set up the necessary environment variables.

Commit and push your changes to trigger the CI/CD pipeline.

Monitor the pipeline execution and verify that the containerized Lambdas are successfully deployed.
