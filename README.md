# Azure Resource Tags, Policies, and Governance Lab

## Overview
This project implements a professional cloud governance framework in Microsoft Azure using resource tags and Azure Policy to prevent cloud sprawl and enforce compliance.

## Tagging Schema

### Mandatory Tags
| Tag Key | Value Used |
|---|---|
| Environment | Development |
| Owner | sadebola@nmsu.edu |
| CostCenter | CC-1001 |
| Application | GovernanceLab |
| DataClassification | Internal |

### Optional Tags
| Tag Key | Value Used |
|---|---|
| ProvisioningDate | 2026-06-19 |
| ManagedBy | Manual |

## Policy Logic
A custom Azure Policy named **Require Environment Tag** was created with a **Deny** effect. It blocks any resource deployment that does not include the Environment tag with one of these approved values: Development, Testing, Staging, or Production.

The policy was assigned to the **governance-lab-rg** resource group scope to avoid subscription-wide impact during testing.

## Environment Setup
1. Create a resource group named `governance-lab-rg`
2. Create a Storage Account and Virtual Network inside it
3. Apply the tagging schema to all resources via the Azure Portal and CLI
4. Create and assign the custom Azure Policy
5. Test enforcement by deploying a resource without tags

## Security & Governance Best Practices
- Always scope policies to a Resource Group during testing before applying subscription-wide
- Use the Deny effect to prevent non-compliant resources from being created
- Tag all resources at creation time to avoid retroactive remediation
- Use Azure Resource Graph to audit and verify tag coverage across your environment
- Regularly review the Policy Compliance Dashboard to monitor governance health
