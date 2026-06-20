#!/bin/bash
# Azure CLI script to apply governance tags to resources

RESOURCE_GROUP="governance-lab-rg"
ENVIRONMENT="Development"
OWNER="sadebola@nmsu.edu"
COST_CENTER="CC-1001"
APPLICATION="GovernanceLab"
DATA_CLASSIFICATION="Internal"
PROVISIONING_DATE="2026-06-19"
MANAGED_BY="Manual"

# Tag the Storage Account
az resource tag \
  --resource-group $RESOURCE_GROUP \
  --name govlabstorage01 \
  --resource-type 'Microsoft.Storage/storageAccounts' \
  --tags Environment=$ENVIRONMENT \
         Owner=$OWNER \
         CostCenter=$COST_CENTER \
         Application=$APPLICATION \
         DataClassification=$DATA_CLASSIFICATION \
         ProvisioningDate=$PROVISIONING_DATE \
         ManagedBy=$MANAGED_BY

# Tag the Virtual Network
az resource tag \
  --resource-group $RESOURCE_GROUP \
  --name govlab-vnet \
  --resource-type 'Microsoft.Network/virtualNetworks' \
  --tags Environment=$ENVIRONMENT \
         Owner=$OWNER \
         CostCenter=$COST_CENTER \
         Application=$APPLICATION \
         DataClassification=$DATA_CLASSIFICATION \
         ProvisioningDate=$PROVISIONING_DATE \
         ManagedBy=$MANAGED_BY

echo "Tags applied successfully to all resources!"
