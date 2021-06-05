targetScope = 'managementGroup'

param managementGroupName string

resource managementGroup 'Microsoft.Management/managementGroups@2020-05-01' = {
  scope: tenant()
  name: managementGroupName
  properties: {}
}

output managementGroupName string = managementGroupName
