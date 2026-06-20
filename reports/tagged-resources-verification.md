# Tagged Resources Verification Report

## Filter: CostCenter = CC-1001
Date: 2026-06-20

## Resources Found

| Name | Type | Resource Group | Location |
|---|---|---|---|
| govlabstorage01 | Storage Account | governance-lab-rg | Sweden Central |
| govlab-vnet | Virtual Network | governance-lab-rg | Sweden Central |

## Tags Applied to All Resources

| Tag Key | Value |
|---|---|
| Environment | Development |
| Owner | sadebola@nmsu.edu |
| CostCenter | CC-1001 |
| Application | GovernanceLab |
| DataClassification | Internal |
| ProvisioningDate | 2026-06-19 |
| ManagedBy | Manual |

## Verification Method
Resources were verified using two methods:
1. Azure Portal tag filter (All Resources → Filter by CostCenter = CC-1001)
2. Azure Resource Graph KQL query:

```kql
Resources
| where tags['CostCenter'] == 'CC-1001'
| project name, type, resourceGroup, tags
| order by name asc
```

## Result
Both resources returned in filter and query results confirming tags are correctly applied and indexed.
