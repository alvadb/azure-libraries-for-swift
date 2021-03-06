// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// FieldDefinitionProtocol is definition of the connection fields.
public protocol FieldDefinitionProtocol : Codable {
     var isEncrypted: Bool? { get set }
     var isOptional: Bool? { get set }
     var type: String { get set }
}
