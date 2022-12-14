# Configure the default Subscription
DEFAULT_SUBS=my_subscription_name
az account set -s $DEFAULT_SUBS

# Configure the default Resource Group
DEFAULT_RG=my_rg_name
az configure --defaults group=$DEFAULT_RG

# List all the Vm's in the Resource Group
az vm list -o table

# List all the Vm's in the Resource Group with
# the Public and Private Ip
az vm list-ip-addresses -o table

# List all the Vm's in the Resource Group with
# the Public Ip
az vm list -d -o table

# List all the Vm's in the Subscription (all the RG)
az vm list -g "" -o table

# List all the Vm's in the subscription in the format
# Name   OS   OSDisk
# ----   --   ------
az vm list -g "" --query "[].{Name:name, OS:storageProfile.osDisk.osType, OSDisk:storageProfile.osDisk.name}" -o table

# List all the Vm's in the Subcription and show the RG
# NAME   OS    RG
# ----   --    --- 
az vm list -g "" --query "[].{Name:name, OS:storageProfile.osDisk.osType, RG:resourceGroup}" -o table
