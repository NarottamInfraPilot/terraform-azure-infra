# terraform-azure-infra

Terraform-based **Infrastructure as Code (IaC)** project for deploying a **3-tier application architecture** on Microsoft Azure.  
This project provisions a secure, scalable, and modular environment including compute, networking, database, and security resources.

---

## 📌 Resources Deployed

This blueprint provisions the following Azure resources:

### 🔹 Networking & Security
- Resource Group
- Virtual Network (VNet)
- Multiple Subnets (App tier, DB tier, Management tier)
- Network Security Groups (NSGs) with rules
- Azure Firewall (optional advanced security)
- Public IPs
- Bastion Host for secure access

### 🔹 Compute
- Load Balancer (for web/app tier high availability)
- 2+ Virtual Machines (Web Tier)
- 2+ Virtual Machines (Application Tier)
- VM NICs with subnet association

### 🔹 Database
- Azure Database for MySQL (Flexible Server)
- MySQL Database instance
- Private Endpoint (secure DB connectivity from app tier)

---

## 🏗️ 3-Tier Architecture

```plaintext
                          +-----------------------+
                          |    Azure Load Balancer|
                          +-----------------------+
                                     |
                ------------------------------------------------
                |                                              |
          +-----------+                                 +-----------+
          | Web VM 1  |                                 | Web VM 2  |
          +-----------+                                 +-----------+
                       \                             /
                        \                           /
                         +-------------------------+
                         |     Application Tier    |
                         | (App VM 1, App VM 2...) |
                         +-------------------------+
                                     |
                         +-------------------------+
                         |  MySQL Database Server  |
                         | (Private Endpoint)      |
                         +-------------------------+
                                     |
                          +-----------------------+
                          |    Bastion Host       |
                          | (Mgmt Subnet + PIP)   |
                          +-----------------------+
