// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectorData : ConnectorProtocol {
    public var connectorId: Int32?
    public var connectorName: String?
    public var connectorType: ConnectorTypesEnum
    public var displayName: String?
    public var description: String?
    public var connectorProperties: [String:[String: String?]]
    public var created: Date?
    public var lastModified: Date?
    public var state: ConnectorStatesEnum?
    public var tenantId: String?
    public var isInternal: Bool?

        enum CodingKeys: String, CodingKey {case connectorId = "connectorId"
        case connectorName = "connectorName"
        case connectorType = "connectorType"
        case displayName = "displayName"
        case description = "description"
        case connectorProperties = "connectorProperties"
        case created = "created"
        case lastModified = "lastModified"
        case state = "state"
        case tenantId = "tenantId"
        case isInternal = "isInternal"
        }

  public init(connectorType: ConnectorTypesEnum, connectorProperties: [String:[String: String?]])  {
    self.connectorType = connectorType
    self.connectorProperties = connectorProperties
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.connectorId) {
        self.connectorId = try container.decode(Int32?.self, forKey: .connectorId)
    }
    if container.contains(.connectorName) {
        self.connectorName = try container.decode(String?.self, forKey: .connectorName)
    }
    self.connectorType = try container.decode(ConnectorTypesEnum.self, forKey: .connectorType)
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    self.connectorProperties = try container.decode([String:[String: String?]].self, forKey: .connectorProperties)
    if container.contains(.created) {
        self.created = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .created)), format: .dateTime)
    }
    if container.contains(.lastModified) {
        self.lastModified = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModified)), format: .dateTime)
    }
    if container.contains(.state) {
        self.state = try container.decode(ConnectorStatesEnum?.self, forKey: .state)
    }
    if container.contains(.tenantId) {
        self.tenantId = try container.decode(String?.self, forKey: .tenantId)
    }
    if container.contains(.isInternal) {
        self.isInternal = try container.decode(Bool?.self, forKey: .isInternal)
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
    if self.connectorId != nil {try container.encode(self.connectorId, forKey: .connectorId)}
    if self.connectorName != nil {try container.encode(self.connectorName, forKey: .connectorName)}
    try container.encode(self.connectorType, forKey: .connectorType)
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    try container.encode(self.connectorProperties, forKey: .connectorProperties)
    if self.created != nil {
        try container.encode(DateConverter.toString(date: self.created!, format: .dateTime), forKey: .created)
    }
    if self.lastModified != nil {
        try container.encode(DateConverter.toString(date: self.lastModified!, format: .dateTime), forKey: .lastModified)
    }
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.tenantId != nil {try container.encode(self.tenantId, forKey: .tenantId)}
    if self.isInternal != nil {try container.encode(self.isInternal, forKey: .isInternal)}
  }
}

extension DataFactory {
  public static func createConnectorProtocol(connectorType: ConnectorTypesEnum, connectorProperties: [String:[String: String?]]) -> ConnectorProtocol {
    return ConnectorData(connectorType: connectorType, connectorProperties: connectorProperties)
  }
}
