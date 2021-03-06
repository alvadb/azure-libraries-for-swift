// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ConnectionProtocol is definition of the connection.
public protocol ConnectionProtocol : Codable {
     var id: String? { get set }
     var name: String? { get set }
     var type: String? { get set }
     var properties: ConnectionPropertiesProtocol? { get set }
}
