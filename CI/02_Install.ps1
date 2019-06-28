#Install-PackageProvider -Name Chocolatey -force;
#Register-PackageSource -Name Chocolatey -ProviderName Chocolatey -Location http://chocolatey.org/api/v2/ -Force -Trusted;
Install-Package -name GraphViz -ForceBootstrap -Force;
dir 'C:\program files\*' -erroraction silentlycontinue
dir 'C:\program files (x86)\*' -erroraction silentlycontinue
#Start-Sleep -Seconds 2;

#Install-PackageProvider -Name NuGet -Force -Scope "CurrentUser";
Install-Module -Name PSGraph -Force -verbose -Scope "CurrentUser" -AllowClobber;
Install-Module -Name PSScriptAnalyzer -Force -Scope "CurrentUser";
Install-Module -Name Pester -Force -verbose -Scope "CurrentUser";
