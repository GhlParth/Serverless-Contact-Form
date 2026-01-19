# Terraform + Ansible: Infrastructure Provisioning & Configuration

## 📌 Project Overview

This project demonstrates **end-to-end infrastructure provisioning and configuration management** using **Terraform** and **Ansible** on cloud infrastructure.

- **Terraform** is used to provision cloud resources (networking + compute).
- **Ansible** is used to configure the provisioned servers (packages, users, web server, and application deployment).

> **Layman Explanation:**  
> Terraform lays the bricks; Ansible brings in the furniture.

---

## 🧠 What This Project Is About

Modern DevOps workflows separate:
- **Infrastructure provisioning** (what resources exist)
- **Configuration management** (how those resources are configured)

This project follows that exact philosophy:

| Tool        | Responsibility |
|------------|----------------|
| Terraform  | Create VPC, Subnets, Security Groups, EC2 |
| Ansible   | Install packages, configure services, deploy website |

---

## 🛠 Tech Stack

- **Infrastructure as Code:** Terraform
- **Configuration Management:** Ansible
- **Cloud Provider:** AWS
- **Compute:** EC2
- **Networking:** VPC, Subnets, Security Groups
- **Web Server:** Nginx / Apache
- **OS:** Linux

---

## 🏗 Architecture Flow

```text
Terraform
   |
   |--> VPC
   |--> Subnets
   |--> Security Groups (SSH, HTTP)
   |--> EC2 Instances
            |
            |--> Output Public IPs
                      |
                      v
               Ansible Inventory
                      |
                      v
               Ansible Playbook
                      |
                      v
        Configured Web Server + App
```
---
## 📂 Project Structure

```text
.
├── ansible/
│ ├── nginx_files/
│ ├── site.yml
│ ├── inventory
│ └── hosts.txt
|
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ └── provider.tf
│
├── script.sh
└── README.md

```

---

## 🚀 Implementation Steps (AWS)

### 1️⃣ Infrastructure Provisioning (Terraform)

1. Define AWS resources using Terraform:
   - VPC
   - Subnets
   - Security Groups (allowing SSH & HTTP)
   - EC2 instances

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Apply configuration:
   ```bash
   terraform apply
   ```

4. Terraform provisions infrastructure using AWS APIs and outputs:
* Public IP addresses of EC2 instances

## 2️⃣ Ansible Inventory Setup

Terraform outputs are used to populate the Ansible inventory.

This can be done in two ways:
- **Manually** copy the EC2 public IP addresses
- **Automatically** generate inventory from Terraform output

### Example Inventory

```ini
[web]
ec2_public_ip ansible_user=ec2-user
```

## 2️⃣ Configuration Management (Ansible)

Ansible connects to the EC2 instances over SSH and executes playbooks to:

- Install required packages (Nginx / Apache)
- Create users
- Configure services
- Deploy website files

### Run the Playbook

```ini
Run the Playbook
```

## ✅ Final Outcome

- Fully provisioned AWS infrastructure
- Secure networking configuration
- EC2 instances automatically configured
- Web server installed and running
- Website deployed without manual intervention

---

## 🎯 Why This Project Matters

This project demonstrates:

- Real-world **Infrastructure as Code + Configuration Management** integration
- Proper **separation of concerns** (infrastructure vs configuration)
- Cloud automation using **industry-standard tools**
- Skills expected from **mid-level DevOps engineers**

---

## 📈 Possible Enhancements

- Dynamic inventory using Terraform output JSON
- Add Load Balancer and Auto Scaling Group
- Integrate CI/CD pipeline (GitHub Actions)
- Use Ansible Vault for secrets management
- Add monitoring (Prometheus / CloudWatch)

---

## 🤝 Let’s Connect

If you're a recruiter, engineer, or cloud enthusiast interested in DevOps and automation, feel free to connect with me.

- 💼 **[LinkedIn](www.linkedin.com/in/gohel-parth-a73625212)**
- 📧 **[Email](parthngohel004@gmail.com)**



## 👤 Author

**Parth Gohil**  
- [@Parth Gohel](https://github.com/GhlParth)
DevOps Engineer | Cloud | Automation

