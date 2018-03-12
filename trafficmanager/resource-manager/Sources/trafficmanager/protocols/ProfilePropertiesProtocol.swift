// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProfilePropertiesProtocol is class representing the Traffic Manager profile properties.
public protocol ProfilePropertiesProtocol : Codable {
     var profileStatus: ProfileStatusEnum? { get set }
     var trafficRoutingMethod: TrafficRoutingMethodEnum? { get set }
     var dnsConfig: DnsConfigProtocol? { get set }
     var monitorConfig: MonitorConfigProtocol? { get set }
     var endpoints: [EndpointProtocol?]? { get set }
}