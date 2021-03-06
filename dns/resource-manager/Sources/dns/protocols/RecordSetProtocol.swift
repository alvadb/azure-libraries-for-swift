// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecordSetProtocol is describes a DNS record set (a collection of DNS records with the same name and type).
public protocol RecordSetProtocol : Codable {
     var id: String? { get set }
     var name: String? { get set }
     var type: String? { get set }
     var etag: String? { get set }
     var properties: RecordSetPropertiesProtocol? { get set }
}
