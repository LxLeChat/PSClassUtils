#Install-PackageProvider -Name Chocolatey -force;
#Register-PackageSource -Name Chocolatey -ProviderName Chocolatey -Location http://chocolatey.org/api/v2/ -Force -Trusted;
#"C:\program files\PackageManagement\NuGet\Packages\Graphviz.2.38.0.2\dot.exe"
Install-Package -name GraphViz -ForceBootstrap -Force -Destination "C:\Program Files\NuGet\Packages\Graphviz";
get-childitem 'C:\Program Files\NuGet\Packages\Graphviz' -Recurse -File | select fullname 
#Start-Sleep -Seconds 2;

#Install-PackageProvider -Name NuGet -Force -Scope "CurrentUser";
#Install-Module -Name PSGraph -Force -verbose -Scope "CurrentUser" -AllowClobber;
#Install-Module -Name PSScriptAnalyzer -Force -Scope "CurrentUser";
#Install-Module -Name Pester -Force -verbose -Scope "CurrentUser";
