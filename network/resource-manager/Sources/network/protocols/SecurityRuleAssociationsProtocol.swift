// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SecurityRuleAssociationsProtocol is all security rules associated with the network interface.
public protocol SecurityRuleAssociationsProtocol : Codable {
     var networkInterfaceAssociation: NetworkInterfaceAssociationProtocol? { get set }
     var subnetAssociation: SubnetAssociationProtocol? { get set }
     var defaultSecurityRules: [SecurityRuleProtocol?]? { get set }
     var effectiveSecurityRules: [EffectiveNetworkSecurityRuleProtocol?]? { get set }
}