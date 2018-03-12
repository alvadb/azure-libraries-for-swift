// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct KeyCredentialData : KeyCredentialProtocol {
    public var additionalProperties: [String:[String: String?]]?
    public var startDate: Date?
    public var endDate: Date?
    public var value: String?
    public var keyId: String?
    public var usage: String?
    public var type: String?
    public var customKeyIdentifier: [UInt8]?

        enum CodingKeys: String, CodingKey {case additionalProperties = ""
        case startDate = "startDate"
        case endDate = "endDate"
        case value = "value"
        case keyId = "keyId"
        case usage = "usage"
        case type = "type"
        case customKeyIdentifier = "customKeyIdentifier"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.additionalProperties) {
        self.additionalProperties = try container.decode([String:[String: String?]]?.self, forKey: .additionalProperties)
    }
    if container.contains(.startDate) {
        self.startDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startDate)), format: .dateTime)
    }
    if container.contains(.endDate) {
        self.endDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endDate)), format: .dateTime)
    }
    if container.contains(.value) {
        self.value = try container.decode(String?.self, forKey: .value)
    }
    if container.contains(.keyId) {
        self.keyId = try container.decode(String?.self, forKey: .keyId)
    }
    if container.contains(.usage) {
        self.usage = try container.decode(String?.self, forKey: .usage)
    }
    if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.customKeyIdentifier) {
        self.customKeyIdentifier = try container.decode([UInt8]?.self, forKey: .customKeyIdentifier)
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
    if self.additionalProperties != nil {try container.encode(self.additionalProperties, forKey: .additionalProperties)}
    if self.startDate != nil {
        try container.encode(DateConverter.toString(date: self.startDate!, format: .dateTime), forKey: .startDate)
    }
    if self.endDate != nil {
        try container.encode(DateConverter.toString(date: self.endDate!, format: .dateTime), forKey: .endDate)
    }
    if self.value != nil {try container.encode(self.value, forKey: .value)}
    if self.keyId != nil {try container.encode(self.keyId, forKey: .keyId)}
    if self.usage != nil {try container.encode(self.usage, forKey: .usage)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.customKeyIdentifier != nil {try container.encode(self.customKeyIdentifier, forKey: .customKeyIdentifier)}
  }
}

extension DataFactory {
  public static func createKeyCredentialProtocol() -> KeyCredentialProtocol {
    return KeyCredentialData()
  }
}