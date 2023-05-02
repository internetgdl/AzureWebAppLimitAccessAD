# AzureWebAppLimitAccessAD

1.  Create an example web app using the script in this repo: ([https://github.com/internetgdl/AzureWebAppLimitAccessAD](https://github.com/internetgdl/AzureWebAppLimitAccessAD/)) 
2. Sign in to the Azure portal ([https://portal.azure.com](https://portal.azure.com/)) with your Azure account.
    
3.  Navigate to the web app that hosts your webpage.
    
4.  In the web app's overview page, click on "Authentication " in the left-hand menu.
    
5.  In the "Authentication " settings, click the "Add identity provider" option.
    
6.  Select "Microsoft" as the identity provider.
    
7.  App Registration Type choose " Creare new app registration"
    
8.  Set the name
    
9.  Under the "Supported account types" section, select "Current tenant - Single tenant" to enable authentication to current tenant
    
10.  Configure the Restrict access  to "Require authentication"  
11.  Set Unauthenticated requests the recomendation "Http 302" and Redirect to Microsoft
    
12.  Click on the "next permission" button to go for the permisions.
13. The basic permission can be User.Read 
14. Click on the "Add" button to create the Identity Provider
