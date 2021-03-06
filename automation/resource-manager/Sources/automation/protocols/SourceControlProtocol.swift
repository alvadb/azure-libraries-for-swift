// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SourceControlProtocol is definition of the source control.
public protocol SourceControlProtocol : Codable {
     var name: String? { get set }
     var id: String? { get set }
     var type: String? { get set }
     var properties: SourceControlPropertiesProtocol? { get set }
}
