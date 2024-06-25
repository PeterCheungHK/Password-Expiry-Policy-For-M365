Right click Powershell.exe Run as administrator

![Right Click run as Admin](https://na.cx/i/AUF89YN.webp)


# Setting User Passwords to Never Expire in Azure AD

To set some user passwords to never expire, follow these instructions:

## Step 1: Install AzureAD PowerShell Module

First, you need to install the AzureAD PowerShell module. Open an elevated PowerShell window and run the following command:

```
Install-Module -Name AzureAD
```


## Step 2: Connect to Your Azure AD Tenant

Connect to your Azure AD tenant using the following command:

```
Connect-AzureAD
```

## Step 3: Set Password to Never Expire
To set a user's password to never expire, use the following command:

```
Set-AzureADUser -ObjectId targetuser@contoso.com  -PasswordPolicies DisablePasswordExpiration
```
[!NOTE]
Replace <UserPrincipalName> with the actual User Principal Name (e.g., user@domain.com).

