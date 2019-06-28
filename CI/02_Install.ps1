#Install-PackageProvider -Name Chocolatey -force;
#Register-PackageSource -Name Chocolatey -ProviderName Chocolatey -Location http://chocolatey.org/api/v2/ -Force -Trusted;
Install-Package -name GraphViz -ForceBootstrap -Force;
#get-childitem 'C:\program files\PackageManagement\*' -directory -Recurse | select fullname
#get-childitem 'C:\program files\PackageManagement\Nuget\*' -directory -Recurse | select fullname
#get-childitem 'C:\program files (x86)\NuGet\*' -directory -Recurse | select fullname

get-childitem 'C:\program files\PackageManagement\NuGet\Packages\Graphviz.2.38.0.2' -Recurse -File | select fullname 
#Start-Sleep -Seconds 2;

#Install-PackageProvider -Name NuGet -Force -Scope "CurrentUser";
#Install-Module -Name PSGraph -Force -verbose -Scope "CurrentUser" -AllowClobber;
#Install-Module -Name PSScriptAnalyzer -Force -Scope "CurrentUser";
#Install-Module -Name Pester -Force -verbose -Scope "CurrentUser";
