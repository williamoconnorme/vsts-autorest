Import-Module ..\ps_modules\VstsTaskSdk

$env:input_errorActionPreference = "CONTINUE"
$env:input_SwaggerURL = "https://petstore.swagger.io/v2/swagger.json"
$env:input_Namespace = "petstore"
$env:input_AddServiceClientCredentials = "true"
$env:SYSTEM_DEFAULTWORKINGDIRECTORY = "."
Set-Location ..\AutoRestNuGetGenerator
Invoke-VstsTaskScript -ScriptBlock { . .\AutorestNugetGenerator.ps1 }
