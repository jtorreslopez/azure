# List all the Vm's in the subscription in the format
# Name   OS   OSDisk
# ----   --   ------
az vm list -g "" --query "[].{Name:name, OS:storageProfile.osDisk.osType, OSDisk:storageProfile.osDisk.name}" -o table


# List all the Vm's in the sub
