// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualNetworkPeeringPropertiesFormatProtocol is properties of the virtual network peering.
public protocol VirtualNetworkPeeringPropertiesFormatProtocol : Codable {
     var allowVirtualNetworkAccess: Bool? { get set }
     var allowForwardedTraffic: Bool? { get set }
     var allowGatewayTransit: Bool? { get set }
     var useRemoteGateways: Bool? { get set }
     var remoteVirtualNetwork: SubResourceProtocol? { get set }
     var remoteAddressSpace: AddressSpaceProtocol? { get set }
     var peeringState: VirtualNetworkPeeringStateEnum? { get set }
     var provisioningState: String? { get set }
}
