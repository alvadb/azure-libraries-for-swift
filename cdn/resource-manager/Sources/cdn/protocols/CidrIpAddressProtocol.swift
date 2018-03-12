// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CidrIpAddressProtocol is CIDR Ip address
public protocol CidrIpAddressProtocol : Codable {
     var baseIpAddress: String? { get set }
     var prefixLength: Int32? { get set }
}