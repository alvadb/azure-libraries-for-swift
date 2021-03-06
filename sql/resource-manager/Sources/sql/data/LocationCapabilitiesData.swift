// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct LocationCapabilitiesData : LocationCapabilitiesProtocol {
    public var name: String?
    public var status: CapabilityStatusEnum?
    public var supportedServerVersions: [ServerVersionCapabilityProtocol?]?

        enum CodingKeys: String, CodingKey {case name = "name"
        case status = "status"
        case supportedServerVersions = "supportedServerVersions"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.status) {
        self.status = try container.decode(CapabilityStatusEnum?.self, forKey: .status)
    }
    if container.contains(.supportedServerVersions) {
        self.supportedServerVersions = try container.decode([ServerVersionCapabilityData?]?.self, forKey: .supportedServerVersions)
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
    if self.status != nil {try container.encode(self.status, forKey: .status)}
    if self.supportedServerVersions != nil {try container.encode(self.supportedServerVersions as! [ServerVersionCapabilityData?]?, forKey: .supportedServerVersions)}
  }
}

extension DataFactory {
  public static func createLocationCapabilitiesProtocol() -> LocationCapabilitiesProtocol {
    return LocationCapabilitiesData()
  }
}
