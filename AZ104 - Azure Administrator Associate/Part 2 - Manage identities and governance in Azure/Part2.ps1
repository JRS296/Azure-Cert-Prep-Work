---------------- Role Defn ---------------

Name: Owner
ID: 01010101-2323-4545-6767-987453021523
IsCustom: False
Description: Manage everything, including access to resources
Actions: {*}             # All actions allowed
NotActions: {}           # No actions denied
AssignableScopes: {/}    # Role can be assigned to all scopes

---------------- Bulk Invitations ---------------

$invitations = import-csv c:\bulkinvite\invitations.csv

$messageInfo = New-Object Microsoft.Open.MSGraph.Model.InvitedUserMessageInfo

$messageInfo.customizedMessageBody = "Hello. You are invited to the Contoso organization."

foreach ($email in $invitations)
   {New-AzureADMSInvitation `
      -InvitedUserEmailAddress $email.InvitedUserEmailAddress `
      -InvitedUserDisplayName $email.Name `
      -InviteRedirectUrl https://myapps.microsoft.com `
      -InvitedUserMessageInfo $messageInfo `
      -SendInvitationMessage $true
   }
