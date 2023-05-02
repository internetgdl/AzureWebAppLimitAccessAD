# AzureWebAppLimitAccessAD


0. Create and example of a WebApp using the powershell script attached in this repo: https://github.com/internetgdl/AzureWebAppLimitAccessAD

1.  Sign in to the Azure portal ([https://portal.azure.com](https://portal.azure.com/)) with your Azure account.
    
2.  Open the Azure Active Directory (AAD) page. You can find it by searching for "Azure Active Directory" in the search bar or by navigating through the menu.
    
3.  In the AAD page, click on "App registrations" under "Manage."
    
4.  Select the application representing your web app from the list of registered apps. If you haven't registered your app yet, you can click on "New registration" to create a new one.
    
5.  In the app's overview page, note down the "Application (client) ID" value. You'll need this later.
    
6.  Click on "Authentication" in the left-hand menu.
    
7.  In the "Implicit grant" section, select the appropriate token types for your web app.
    
8.  In the "Supported account types" section, select "Accounts in this organizational directory only (Single tenant)."
    
9.  Scroll down to the "Advanced settings" section and click on "Manage application permissions."
    
10.  In the "API permissions" page, click on "Add a permission."
    
11.  In the "Request API permissions" page, select "Microsoft Graph" and then choose the appropriate permissions based on what you want users to be able to do in your web app.
    
12.  After selecting the permissions, click on the "Add permissions" button.
    
13.  Go back to the app's overview page and click on "Manifest" in the left-hand menu.
    
14.  In the manifest editor, locate the "groupMembershipClaims" property and set its value to "SecurityGroup." This allows the app to retrieve group membership information.
    
15.  Save the changes made to the manifest.
    
16.  Now, in your web app code, you can use the Azure AD authentication library or SDK to validate the user's identity against the authorized list of AD users. You can achieve this by verifying the user's membership in a specific AD security group or by checking if the user's object ID is in the authorized list.
