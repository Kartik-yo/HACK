# HACK Project: Cloud-Native Infrastructure Implementation

## 📋 Table of Contents
- [Overview](#overview)
- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)


## 🎯 Overview
HACK (Helm, AWS, CI/CD, Kubernetes) is a comprehensive infrastructure project implementing secure and scalable microservices deployment using modern cloud-native technologies. The project leverages AWS cloud services, Terraform for infrastructure as code, Helm for package management, HashiCorp Vault for secrets management, and Prometheus/Grafana for monitoring.

## 🏗 Architecture
```plaintext
├── AWS Cloud Infrastructure
│   ├── Kubernetes Cluster
│   ├── Load Balancers
│   └── Networking Components
├── Microservices Layer
│   ├── Application Services
│   └── Service Mesh
├── Security Layer
│   └── HashiCorp Vault
└── Monitoring Stack
    ├── Prometheus
    └── Grafana
```

## 🛠 Prerequisites
- AWS Account with appropriate IAM permissions
- Terraform >= 1.0.0
- Kubernetes >= 1.20
- Helm >= 3.0.0
- kubectl configured for your cluster
- HashiCorp Vault >= 1.9.0
- GitHub Account (for CI/CD)

## 📁 Project Structure
```plaintext
├── README.md
├── deployment
│   └── microservice
│       ├── helm-chart
│       │   ├── Chart.yaml
│       │   ├── templates
│       │   │   ├── configmap.yaml
│       │   │   ├── deployment.yaml
│       │   │   └── service.yaml
│       │   └── values.yaml
│       ├── logs
│       │   └── 1.txt  # Log file (placeholder for now)
│       └── scripts
│           ├── cleanup.sh
│           ├── debug.sh
│           └── deploy.sh
├── infra
│   └── terraform
│       ├── backend.tf
│       ├── main.tf
│       ├── outputs.tf
│       ├── provider.tf
│       └── variables.tf
└── sample-microservice
    ├── Dockerfile
    └── src
        ├── app.py
        └── requirements.txt
```
note: added cicd .yaml for automated build, test (using eslinter) and deploy ,not now but after builiding this project.
