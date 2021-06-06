param peeringName string
param hubNetworkName string
param spokeNetworkId string
param allowVirtualNetworkAccess bool
param allowForwardedTraffic bool
param allowGatewayTransit bool
param useRemoteGateways bool

resource peeringHubToSpoke 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2020-06-01' = {
  name: '${hubNetworkName}/${peeringName}'
  properties: {
    allowVirtualNetworkAccess: allowVirtualNetworkAccess
    allowForwardedTraffic: allowForwardedTraffic
    allowGatewayTransit: allowGatewayTransit
    useRemoteGateways: useRemoteGateways
    remoteVirtualNetwork: {
      id: spokeNetworkId
    }
  }
}
