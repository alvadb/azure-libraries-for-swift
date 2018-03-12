// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DeepCreatedOriginProtocol is the main origin of CDN content which is added when creating a CDN endpoint.
public protocol DeepCreatedOriginProtocol : Codable {
     var name: String { get set }
     var properties: DeepCreatedOriginPropertiesProtocol? { get set }
}