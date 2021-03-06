// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BGPCommunityData : BGPCommunityProtocol {
    public var serviceSupportedRegion: String?
    public var communityName: String?
    public var communityValue: String?
    public var communityPrefixes: [String]?
    public var isAuthorizedToUse: Bool?
    public var serviceGroup: String?

        enum CodingKeys: String, CodingKey {case serviceSupportedRegion = "serviceSupportedRegion"
        case communityName = "communityName"
        case communityValue = "communityValue"
        case communityPrefixes = "communityPrefixes"
        case isAuthorizedToUse = "isAuthorizedToUse"
        case serviceGroup = "serviceGroup"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.serviceSupportedRegion) {
        self.serviceSupportedRegion = try container.decode(String?.self, forKey: .serviceSupportedRegion)
    }
    if container.contains(.communityName) {
        self.communityName = try container.decode(String?.self, forKey: .communityName)
    }
    if container.contains(.communityValue) {
        self.communityValue = try container.decode(String?.self, forKey: .communityValue)
    }
    if container.contains(.communityPrefixes) {
        self.communityPrefixes = try container.decode([String]?.self, forKey: .communityPrefixes)
    }
    if container.contains(.isAuthorizedToUse) {
        self.isAuthorizedToUse = try container.decode(Bool?.self, forKey: .isAuthorizedToUse)
    }
    if container.contains(.serviceGroup) {
        self.serviceGroup = try container.decode(String?.self, forKey: .serviceGroup)
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
    if self.serviceSupportedRegion != nil {try container.encode(self.serviceSupportedRegion, forKey: .serviceSupportedRegion)}
    if self.communityName != nil {try container.encode(self.communityName, forKey: .communityName)}
    if self.communityValue != nil {try container.encode(self.communityValue, forKey: .communityValue)}
    if self.communityPrefixes != nil {try container.encode(self.communityPrefixes as! [String]?, forKey: .communityPrefixes)}
    if self.isAuthorizedToUse != nil {try container.encode(self.isAuthorizedToUse, forKey: .isAuthorizedToUse)}
    if self.serviceGroup != nil {try container.encode(self.serviceGroup, forKey: .serviceGroup)}
  }
}

extension DataFactory {
  public static func createBGPCommunityProtocol() -> BGPCommunityProtocol {
    return BGPCommunityData()
  }
}
