// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DhcpOptionsProtocol is dhcpOptions contains an array of DNS servers available to VMs deployed in the virtual
// network. Standard DHCP option for a subnet overrides VNET DHCP options.
public protocol DhcpOptionsProtocol : Codable {
     var dnsServers: [String]? { get set }
}