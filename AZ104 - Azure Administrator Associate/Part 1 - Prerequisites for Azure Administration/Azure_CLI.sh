Connect-AzAccount

Set-AzContext -Subscription '00000000-0000-0000-0000-000000000000'

Get-AzResourceGroup

Get-AzResourceGroup | Format-Table

New-AzResourceGroup -Name <name> -Location <location>

Get-AzResource

Get-AzResource | Format-Table

Get-AzResource -ResourceGroupName ExerciseResources

New-AzVm
    -ResourceGroupName <resource group name>
    -Name <machine name>
    -Credential <credentials object>
    -Location <location>
    -Image <image name>

Remove-AzResourceGroup -Name MyResourceGroupName

----------------------------------------- AZ CLI ----------------------------------------- 

az vm create \
  --resource-group CrmTestingResourceGroup \
  --name CrmUnitTests \
  --image UbuntuLTS
  ...

az vm restart -g MyResourceGroup -n MyVm

az find "az vm"

az storage blob --help

az login

az group create --name <name> --location <location>

az group list --output table

templateFile="ARM_template.json"
az deployment group create \
  --name testdeployment1 \
  --template-file $templateFile \
  --parameters storageAccountType=Standard_LRS

----------------------------------------- Bash ----------------------------------------- 

AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
sudo tee /etc/apt/sources.list.d/azure-cli.list

