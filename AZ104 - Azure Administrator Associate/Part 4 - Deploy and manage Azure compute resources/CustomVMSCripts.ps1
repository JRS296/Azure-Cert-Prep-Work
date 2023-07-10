Set-AzVmCustomScriptExtension -FileUri https://scriptstore.blob.core.windows.net/scripts/Install_IIS.ps1 -Run "PowerShell.exe" -VmName vmName -ResourceGroupName resourceGroup -Location "location"

configuration IISInstall
{
   Node "localhost"
   {
      WindowsFeature IIS
      {
         Ensure = "Present"
         Name = "Web-Server"
      }
   }
}