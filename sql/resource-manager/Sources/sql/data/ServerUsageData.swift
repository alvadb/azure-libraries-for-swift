// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServerUsageData : ServerUsageProtocol {
    public var name: String?
    public var resourceName: String?
    public var displayName: String?
    public var currentValue: Double?
    public var limit: Double?
    public var unit: String?
    public var nextResetTime: Date?

        enum CodingKeys: String, CodingKey {case name = "name"
        case resourceName = "resourceName"
        case displayName = "displayName"
        case currentValue = "currentValue"
        case limit = "limit"
        case unit = "unit"
        case nextResetTime = "nextResetTime"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.resourceName) {
        self.resourceName = try container.decode(String?.self, forKey: .resourceName)
    }
    if container.contains(.displayName) {
        self.displayName = try container.decode(String?.self, forKey: .displayName)
    }
    if container.contains(.currentValue) {
        self.currentValue = try container.decode(Double?.self, forKey: .currentValue)
    }
    if container.contains(.limit) {
        self.limit = try container.decode(Double?.self, forKey: .limit)
    }
    if container.contains(.unit) {
        self.unit = try container.decode(String?.self, forKey: .unit)
    }
    if container.contains(.nextResetTime) {
        self.nextResetTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .nextResetTime)), format: .dateTime)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.resourceName != nil {try container.encode(self.resourceName, forKey: .resourceName)}
    if self.displayName != nil {try container.encode(self.displayName, forKey: .displayName)}
    if self.currentValue != nil {try container.encode(self.currentValue, forKey: .currentValue)}
    if self.limit != nil {try container.encode(self.limit, forKey: .limit)}
    if self.unit != nil {try container.encode(self.unit, forKey: .unit)}
    if self.nextResetTime != nil {
        try container.encode(DateConverter.toString(date: self.nextResetTime!, format: .dateTime), forKey: .nextResetTime)
    }
  }
}

extension DataFactory {
  public static func createServerUsageProtocol() -> ServerUsageProtocol {
    return ServerUsageData()
  }
}