New-AzVm `
    -ResourceGroupName "CrmTestingResourceGroup" `
    -Name "CrmUnitTests" `
    -Image "UbuntuLTS"
    ...

$vm = Get-AzVM  -Name MyVM -ResourceGroupName ExerciseResources

$ResourceGroupName = "ExerciseResources"
$vm = Get-AzVM  -Name MyVM -ResourceGroupName $ResourceGroupName
$vm.HardwareProfile.vmSize = "Standard_DS3_v2"

Update-AzVM -ResourceGroupName $ResourceGroupName  -VM $vm

$templateFile="azuredeploy.json"
New-AzResourceGroupDeployment `
  -Name testdeployment1 `
  -TemplateFile $templateFile `
  -storageAccountType Standard_LRS