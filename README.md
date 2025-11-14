# Genric_code
# Azure Generic Terraform Framework

A fully modular and reusable Terraform framework for provisioning Azure infrastructure using best practices.  
This project follows a clean, scalable, and environment-agnostic structure suitable for Dev, Test, and Prod deployments.

---

## 📌 Overview

This framework provisions Azure resources using independent, plug-and-play Terraform modules:

- Resource Groups  
- Virtual Networks  
- Subnets (Dynamic)  
- Public IPs  
- Network Interfaces  
- Linux Virtual Machines  

Each module uses `for_each`, `dynamic` blocks, and a consistent tagging strategy to ensure maximum reusability and minimal code duplication.

---

## 📁 Module Structure
Modules/
│
├── Test_RG/
├── Test_VNET/
├── Test_NIC/
├── Test_PIP/
└── Test_VM/

Env/
└── Dev/
├── main.tf
├── var.tf
└── terraform.tfvars


---

## 🚀 Features

- Fully modular design  
- Dynamic subnet creation  
- Consistent `merge()`-based tagging  
- Cloud Adoption Framework (CAF) naming friendly  
- Environment-agnostic architecture  
- Production-ready VM creation logic  
- Data lookups for NIC and subnet resolution  

---


---

## ⚙️ Modules Included

### Resource Group Module
Creates one or multiple resource groups using a map-based structure.

### Virtual Network Module
Supports dynamic subnet creation using `dynamic` blocks.

### NIC Module
Fetches subnet via data lookup and attaches NIC to the VM.

### Public IP Module
Creates standard public IPs with production-ready configuration.

### Virtual Machine Module
Creates Linux VMs with network interface lookups, image reference, and OS disk configuration.

---

## 📦 Inputs

All modules accept:

- Resource-specific inputs  
- `common_tags` map for global tags  
- Environment-level variables via `.tfvars`  

---

## 🏁 Conclusion

This Terraform setup delivers a clean, maintainable, and highly reusable framework for Azure deployments.  
It is optimized for teams following modular IaC patterns and Cloud Adoption Framework standards.

