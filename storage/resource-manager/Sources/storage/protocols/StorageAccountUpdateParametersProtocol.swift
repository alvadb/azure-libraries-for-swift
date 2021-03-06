// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StorageAccountUpdateParametersProtocol is the parameters that can be provided when updating the storage account
// properties.
public protocol StorageAccountUpdateParametersProtocol : Codable {
     var sku: SkuProtocol? { get set }
     var tags: [String:String]? { get set }
     var identity: IdentityProtocol? { get set }
     var properties: StorageAccountPropertiesUpdateParametersProtocol? { get set }
     var kind: KindEnum? { get set }
}
