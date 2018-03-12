// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServerPropertiesProtocol is the properties of a server.
public protocol ServerPropertiesProtocol : Codable {
     var administratorLogin: String? { get set }
     var administratorLoginPassword: String? { get set }
     var version: String? { get set }
     var state: String? { get set }
     var fullyQualifiedDomainName: String? { get set }
}