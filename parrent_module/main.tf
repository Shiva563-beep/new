module "resource_group"{
    source= "../child_module/azurerm_resource_group"
    resource_group_name= "shiva_rg1"
    location= "Japan East"
}

module "storage_account_name"{
    source= "../child_module/azurerm_storage_account"
    storage_account_name= "shiva_storage1"
    resource_group_name= "shiva_rg1"
    location= "Japan East"
}

module "container_name"{
    source = "../child_module/azurerm_container"
    storage_container_name= "shiva_container1"
    storage_account_id= "string"

}