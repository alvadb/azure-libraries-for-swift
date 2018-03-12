// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RoutingServiceBusQueueEndpointPropertiesProtocol is the properties related to service bus queue endpoint types.
public protocol RoutingServiceBusQueueEndpointPropertiesProtocol : Codable {
     var connectionString: String { get set }
     var name: String { get set }
     var subscriptionId: String? { get set }
     var resourceGroup: String? { get set }
}