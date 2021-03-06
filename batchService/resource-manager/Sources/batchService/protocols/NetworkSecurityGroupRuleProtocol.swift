// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NetworkSecurityGroupRuleProtocol is
public protocol NetworkSecurityGroupRuleProtocol : Codable {
     var priority: Int32 { get set }
     var access: NetworkSecurityGroupRuleAccessEnum { get set }
     var sourceAddressPrefix: String { get set }
}
