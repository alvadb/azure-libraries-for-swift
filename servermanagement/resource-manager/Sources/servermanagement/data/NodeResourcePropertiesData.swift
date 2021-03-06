// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct NodeResourcePropertiesData : NodeResourcePropertiesProtocol {
    public var gatewayId: String?
    public var connectionName: String?
    public var created: Date?
    public var updated: Date?

        enum CodingKeys: String, CodingKey {case gatewayId = "gatewayId"
        case connectionName = "connectionName"
        case created = "created"
        case updated = "updated"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.gatewayId) {
        self.gatewayId = try container.decode(String?.self, forKey: .gatewayId)
    }
    if container.contains(.connectionName) {
        self.connectionName = try container.decode(String?.self, forKey: .connectionName)
    }
    if container.contains(.created) {
        self.created = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .created)), format: .dateTime)
    }
    if container.contains(.updated) {
        self.updated = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .updated)), format: .dateTime)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.gatewayId != nil {try container.encode(self.gatewayId, forKey: .gatewayId)}
    if self.connectionName != nil {try container.encode(self.connectionName, forKey: .connectionName)}
    if self.created != nil {
        try container.encode(DateConverter.toString(date: self.created!, format: .dateTime), forKey: .created)
    }
    if self.updated != nil {
        try container.encode(DateConverter.toString(date: self.updated!, format: .dateTime), forKey: .updated)
    }
  }
}

extension DataFactory {
  public static func createNodeResourcePropertiesProtocol() -> NodeResourcePropertiesProtocol {
    return NodeResourcePropertiesData()
  }
}
