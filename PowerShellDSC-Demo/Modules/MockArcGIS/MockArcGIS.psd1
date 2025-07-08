@{
    RootModule = 'MockArcGIS.psm1'
    ModuleVersion = '1.0.0.0'
    GUID = '12345678-1234-1234-1234-123456789012'
    Author = 'Aleemuddin Mohammad'
    Description = 'Mock ArcGIS DSC Simulation'
    FunctionsToExport = @()
    DscResourcesToExport = @('ArcGIS_Server')
    NestedModules = @()
    PrivateData = @{
        PSData = @{
            Tags = @('DSC', 'ArcGIS', 'Simulation')
        }
    }
}
