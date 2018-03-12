// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CloudServiceConfigurationData : CloudServiceConfigurationProtocol {
    public var osFamily: String
    public var targetOSVersion: String?
    public var currentOSVersion: String?

        enum CodingKeys: String, CodingKey {case osFamily = "osFamily"
        case targetOSVersion = "targetOSVersion"
        case currentOSVersion = "currentOSVersion"
        }

  public init(osFamily: String)  {
    self.osFamily = osFamily
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.osFamily = try container.decode(String.self, forKey: .osFamily)
    if container.contains(.targetOSVersion) {
        self.targetOSVersion = try container.decode(String?.self, forKey: .targetOSVersion)
    }
    if container.contains(.currentOSVersion) {
        self.currentOSVersion = try container.decode(String?.self, forKey: .currentOSVersion)
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
    try container.encode(self.osFamily, forKey: .osFamily)
    if self.targetOSVersion != nil {try container.encode(self.targetOSVersion, forKey: .targetOSVersion)}
    if self.currentOSVersion != nil {try container.encode(self.currentOSVersion, forKey: .currentOSVersion)}
  }
}

extension DataFactory {
  public static func createCloudServiceConfigurationProtocol(osFamily: String) -> CloudServiceConfigurationProtocol {
    return CloudServiceConfigurationData(osFamily: osFamily)
  }
}