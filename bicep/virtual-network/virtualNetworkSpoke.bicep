param name string
param location string
param addressPrefixs array
param subnetName string
param subnetAddressPrefix string

resource virtual_network 'Microsoft.Network/virtualNetworks@2020-08-01' = {
  name: name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixs 
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetAddressPrefix
        }
      }
    ]
  }
}

output virtualNetworkId string = virtual_network.id
output subnetName string = subnetName
output networkName string = name
