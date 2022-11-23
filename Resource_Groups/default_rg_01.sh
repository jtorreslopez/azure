# Configure the default Subscription
DEFAULT_SUBS=my_subscription_name
az account set -s $DEFAULT_SUBS

# Configure the default Resource Group
DEFAULT_RG=my_rg_name
az configure --defaults group=$DEFAULT_RG
