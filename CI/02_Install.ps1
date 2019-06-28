## In 2019 image, this is the default path
#"C:\program files\PackageManagement\NuGet\Packages\Graphviz.2.38.0.2\dot.exe"

## Force Path .. otherwise psgraph wont find GraphViz binaries !
Install-Package -name GraphViz -ForceBootstrap -Force -Destination "C:\Program Files\NuGet\Packages";

Start-Sleep -Seconds 2;

Install-Module -Name PSGraph -Force -verbose -Scope "CurrentUser" -AllowClobber;
Install-Module -Name PSScriptAnalyzer -Force -Scope "CurrentUser";
Install-Module -Name Pester -Force -verbose -Scope "CurrentUser";
