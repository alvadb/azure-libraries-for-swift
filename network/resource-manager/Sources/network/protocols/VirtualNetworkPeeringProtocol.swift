// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualNetworkPeeringProtocol is peerings in a virtual network resource.
public protocol VirtualNetworkPeeringProtocol : SubResourceProtocol {
     var properties: VirtualNetworkPeeringPropertiesFormatProtocol? { get set }
     var name: String? { get set }
     var etag: String? { get set }
}