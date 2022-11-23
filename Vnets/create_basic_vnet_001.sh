# Create a Vnet with a subnet
RG_NAME=test-rg-1
VNET_NAME=demo-vnet-01
SNET_NAME=demo-snet-01

az configure --defaults group=$RG_NAME
az network vnet create --name $VNET_NAME --address-prefix 10.0.0.0/16 --subnet-name $SNET_NAME --subnet-prefixes 10.0.0.0/24
