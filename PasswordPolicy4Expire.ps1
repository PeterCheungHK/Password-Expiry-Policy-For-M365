﻿# Setting User Passwords to Never Expire in Azure AD

# Right-click Powershell.exe Run as administrator
# (Include image link in comments if needed)
# ![Right Click run as Admin](https://na.cx/i/AUF89YN.webp)

# Step 1: Install AzureAD PowerShell Module
# First, you need to install the AzureAD PowerShell module. Open an elevated PowerShell window and run the following command:
Install-Module -Name AzureAD

# Step 2: Connect to Your Azure AD Tenant
# Connect to your Azure AD tenant using the following command:
Connect-AzureAD

# Step 3: Set Password to Never Expire
# To set a user's password to never expire, use the following command:
Set-AzureADUser -ObjectId targetuser@contoso.com -PasswordPolicies DisablePasswordExpiration

# Replace targetuser@contoso.com with the actual User Principal Name (e.g., user@domain.com).

# Step 4: Verify
# To verify the password policy, use the following command:
Get-AzureADUser -ObjectId targetuser@contoso.com | Select-Object -ExpandProperty PasswordPolicies

# Set Password to Expire
# To set the password to expire again, use the following command:
Set-AzureADUser -ObjectId <UserPrincipalName> -PasswordPolicies None

# WARNING: You should know what you are doing

# Apply to All Users
# To set the password to never expire for all users, use the following command:
Get-AzureADUser -All $true | ForEach-Object { Set-AzureADUser -ObjectId $_.ObjectId -PasswordPolicies DisablePasswordExpiration }
