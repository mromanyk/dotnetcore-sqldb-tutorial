[CmdletBinding()]
param(
    [Parameter()]
    [string]$configuration,
    [string]$path
)
$project_file = Join-Path $path "webapp/DotNetCoreSqlDb.csproj"

dotnet build $project_file -c $configuration

if ($LASTEXITCODE) { 
    throw "Dotnet failed" 
}