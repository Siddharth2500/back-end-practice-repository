az webapp deploy --resource-group linux-app-service --name linuxwebapp06182023 --src-path "D:\Tutorials\dotnet\user-api\UserApi\bin\Release\net7.0\publish\publish.zip" --target-path "/home/site/wwwroot" --type zip

Compress-Archive -Path "D:\Tutorials\dotnet\user-api\UserApi\bin\Release\net7.0\publish\*"

Compress-Archive -Path "D:\Tutorials\dotnet\user-api\UserApi\bin\Release\net7.0\publish" -DestinationPath 
"D:\Tutorials\dotnet\user-api\UserApi"

{
    "clientId": "6ac6c750-7080-4689-8a32-c350f3b1a5c2",
    "clientSecret": "RR68Q~VFyZztjgBc.ypCEvIPJu0Z9i.2D4Rf2b-A",
    "subscriptionId": "d489806a-54dc-4ddb-9ac6-904757bc3b77",
    "tenantId": "b5381392-dbb8-4dda-aa0d-68f6eefcf339",
    "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
    "resourceManagerEndpointUrl": "https://management.azure.com/",
    "activeDirectoryGraphResourceId": "https://graph.windows.net/",
    "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
    "galleryEndpointUrl": "https://gallery.azure.com/",
    "managementEndpointUrl": "https://management.core.windows.net/"
  }

az ad sp create-for-rbac --name "apisecret" --role contributor --scopes /subscriptions/d489806a-54dc-4ddb-9ac6-904757bc3b77 --sdk-auth
