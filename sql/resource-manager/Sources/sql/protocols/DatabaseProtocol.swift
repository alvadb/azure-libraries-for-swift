// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DatabaseProtocol is represents a database.
public protocol DatabaseProtocol : TrackedResourceProtocol {
     var kind: String? { get set }
     var properties: DatabasePropertiesProtocol? { get set }
}
