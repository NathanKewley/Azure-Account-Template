param peeringName string
param hubNetworkId string
param spokeNetworkName string
param allowVirtualNetworkAccess bool
param allowForwardedTraffic bool
param allowGatewayTransit bool
param useRemoteGateways bool

resource peerSpokeToHub 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2020-06-01' = {
  name: '${spokeNetworkName}/${peeringName}'
  properties: {
    allowVirtualNetworkAccess: allowVirtualNetworkAccess
    allowForwardedTraffic: allowForwardedTraffic
    allowGatewayTransit: allowGatewayTransit
    useRemoteGateways: useRemoteGateways
    remoteVirtualNetwork: {
      id: hubNetworkId
    }
  }
}
