# ArcGIS Mock Configuration Automation Demos

This repository contains basic  mock implementations of configuration automation for **ArcGIS Enterprise**, built using:

- **PowerShell DSC** (Windows-based)
- **Chef** (Linux-based)

 The goal: **Simulate the structure, logic, and best practices used by Esri’s real-world automation tools** like [arcgis-cookbook](https://github.com/Esri/arcgis-cookbook) and [PowerShell DSC Resources](https://github.com/Esri/arcgis-powershell-dsc).

---

## What’s Included

###  PowerShellDSC-Demo
- Windows-based mock deployment using DSC
- Implements `Get/Set/Test-TargetResource` logic
- Simulates install behavior via file creation (`install.log`)
- Demonstrates idempotency and resource modeling

-> [PowerShellDSC-Demo README ](./PowerShellDSC-Demo)

---

###  Chef-Demo
- Linux-based mock ArcGIS Server setup using Chef
- Replicates structure and flow from Esri’s arcgis-cookbook
- Uses attributes, recipes, templates, and mock logic
- Easily extendable for real environments

-> [Chef-Demo README](./Chef-Demo)

---

##  Why This Matters

These demos are designed to **showcase configuration automation fluency** in Esri’s ecosystem — whether you're working as a product engineer, DevOps specialist, or platform integrator.

Each demo reflects:
-  *Idempotent* infrastructure behavior
-  *Structured configuration management*
-  *Hands-on understanding of deployment flows*

---

##  Who Should Use This

- **DevOps engineers** learning ArcGIS automation tools
- **Product engineers** building config logic or installer flows
- **Interview candidates** preparing real-world infra demos





---

## License

This demo code is intended for learning and evaluation purposes. All references to ArcGIS are for mock implementation only.


