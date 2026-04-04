Here’s your **final, polished, recruiter-ready README** based on everything you built and cleaned up.

You can copy this directly into your repo.

---

# Cloud Resume Challenge – AWS + Terraform

## Overview

This project is my implementation of the Cloud Resume Challenge using AWS and Terraform. It demonstrates how to design, deploy, and manage a full-stack serverless application using Infrastructure as Code (IaC) and CI/CD.

The application is a personal resume website with a dynamic visitor counter powered by a serverless backend.

---

## Architecture

**Frontend**

* Static website hosted on Amazon S3
* Delivered globally via Amazon CloudFront
* Custom domain managed through Cloudflare

**Backend**

* Amazon API Gateway (HTTP API)
* AWS Lambda functions:

  * `GET /visitorCount` – retrieves the current visitor count
  * `POST /visitorCount/increment` – increments the count
* Amazon DynamoDB stores the visitor count

**Infrastructure as Code**

* Terraform manages all backend and infrastructure resources:

  * Lambda
  * API Gateway
  * DynamoDB
  * CloudFront
  * IAM roles and policies
  * Cloudflare DNS records

**CI/CD**

* GitHub Actions automates backend deployment using Terraform
* Uses AWS OIDC for secure, credential-free authentication

---

## Key Features

* Serverless visitor counter using API Gateway, Lambda, and DynamoDB
* Infrastructure fully defined and managed with Terraform
* Remote Terraform state using S3 with locking
* Automated deployments via GitHub Actions
* Custom domain integration with Cloudflare and CloudFront
* Modular Terraform structure for maintainability

---

## Project Structure

```text
backend/
  terraform/
    backend.tf
    provider.tf
    variables.tf
    locals.tf
    iam.tf
    lambda.tf
    api_gateway.tf
    dynamodb.tf
    cloudfront.tf
    cloudflare.tf
    outputs.tf

frontend/
  index.html
```

---

## Terraform Highlights

* **Remote state management**
  S3 backend with locking enabled to prevent concurrent state changes

* **Consistent naming strategy**
  Centralized naming via `locals.tf` for maintainability and scalability

* **Modular structure**
  Resources separated by responsibility (Lambda, API, IAM, etc.)

* **Resource import**
  Existing AWS resources imported and aligned with Terraform state

* **Secure CI/CD**
  GitHub Actions uses OIDC instead of long-lived AWS credentials

---

## Challenges and Learnings

During this project, I encountered and resolved several real-world issues:

* Handling large Terraform provider files exceeding GitHub limits
* Debugging Terraform state lock conflicts between local and CI runs
* Aligning imported CloudFront resources to prevent unintended changes
* Resolving Lambda runtime incompatibilities
* Fixing CORS issues between frontend and API Gateway
* Importing and managing existing Cloudflare DNS records in Terraform
* Troubleshooting AWS Bedrock API errors and request limits

These challenges strengthened my understanding of cloud infrastructure, automation, and debugging distributed systems.

---

## How to Run Locally

### Prerequisites

* Terraform installed
* AWS CLI configured
* Cloudflare API token

### Steps

```bash
cd backend/terraform
terraform init
terraform plan
terraform apply
```

---

## Live Demo

* Website: [https://robertgparedes.com](https://robertgparedes.com)
* API: Available via Terraform outputs

---

## Resume Highlights

* Built and deployed a full-stack serverless resume application on AWS using CloudFront, S3, API Gateway, Lambda, and DynamoDB, enabling dynamic visitor tracking through a RESTful API

* Designed and implemented Infrastructure as Code using Terraform with a modular architecture, including remote state management, resource import, and environment-based configuration

---

## Future Improvements

* Add authentication layer (Cognito or JWT)
* Extend API functionality
* Improve observability (CloudWatch dashboards and logging)
* Add automated frontend deployment pipeline
* Expand AI summarizer feature using AWS Bedrock

---

## About Me

I’m a former Network Engineer transitioning into Cloud and DevOps, focusing on AWS, Terraform, and automation.

This project reflects my ability to:

* Design serverless architectures
* Manage infrastructure with code
* Implement CI/CD pipelines
* Troubleshoot real-world cloud systems
