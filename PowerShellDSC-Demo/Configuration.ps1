Configuration ArcGISServerConfig {
    Import-DscResource -ModuleName @{ModuleName='MockArcGIS'; ModuleVersion='1.0.0.0'}


    Node 'localhost' {
        ArcGIS_Server ArcServer {
            NodeName        = 'localhost'
            InstallDir      = 'C:\Users\aleemuddinmohammad\Desktop\ArcGIS-demos\PowerShellDSC-Demo\ArcGIS\Server'
            LicenseFilePath = 'C:\Users\aleemuddinmohammad\Desktop\ArcGIS-demos\PowerShellDSC-Demo\Licenses\server.lic'
            LogsDirectory   = 'C:\Users\aleemuddinmohammad\Desktop\ArcGIS-demos\PowerShellDSC-Demo\ArcGIS\Server\logs'
            AdminUsername   = 'arcgisadmin'
            AdminPassword   = 'mockpassword123'
        }
    }
}

ArcGISServerConfig
