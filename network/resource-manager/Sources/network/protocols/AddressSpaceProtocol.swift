// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AddressSpaceProtocol is addressSpace contains an array of IP address ranges that can be used by subnets of the
// virtual network.
public protocol AddressSpaceProtocol : Codable {
     var addressPrefixes: [String]? { get set }
}