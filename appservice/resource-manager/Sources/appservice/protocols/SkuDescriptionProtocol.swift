// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SkuDescriptionProtocol is description of a SKU for a scalable resource.
public protocol SkuDescriptionProtocol : Codable {
     var name: String? { get set }
     var tier: String? { get set }
     var size: String? { get set }
     var family: String? { get set }
     var capacity: Int32? { get set }
     var skuCapacity: SkuCapacityProtocol? { get set }
     var locations: [String]? { get set }
     var capabilities: [CapabilityProtocol?]? { get set }
}
