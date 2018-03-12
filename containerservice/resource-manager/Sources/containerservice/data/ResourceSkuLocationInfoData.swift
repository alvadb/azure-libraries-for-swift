// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ResourceSkuLocationInfoData : ResourceSkuLocationInfoProtocol {
    public var location: String?
    public var zones: [String]?

        enum CodingKeys: String, CodingKey {case location = "location"
        case zones = "zones"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.location) {
        self.location = try container.decode(String?.self, forKey: .location)
    }
    if container.contains(.zones) {
        self.zones = try container.decode([String]?.self, forKey: .zones)
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
    if self.location != nil {try container.encode(self.location, forKey: .location)}
    if self.zones != nil {try container.encode(self.zones as! [String]?, forKey: .zones)}
  }
}

extension DataFactory {
  public static func createResourceSkuLocationInfoProtocol() -> ResourceSkuLocationInfoProtocol {
    return ResourceSkuLocationInfoData()
  }
}