// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InboundNATPoolProtocol is
public protocol InboundNATPoolProtocol : Codable {
     var name: String { get set }
     var _protocol: InboundEndpointProtocolEnum { get set }
     var backendPort: Int32 { get set }
     var frontendPortRangeStart: Int32 { get set }
     var frontendPortRangeEnd: Int32 { get set }
     var networkSecurityGroupRules: [NetworkSecurityGroupRuleProtocol?]? { get set }
}