// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CustomImagePropertiesCustomData : CustomImagePropertiesCustomProtocol {
    public var imageName: String?
    public var sysPrep: Bool?
    public var osType: CustomImageOsTypeEnum

        enum CodingKeys: String, CodingKey {case imageName = "imageName"
        case sysPrep = "sysPrep"
        case osType = "osType"
        }

  public init(osType: CustomImageOsTypeEnum)  {
    self.osType = osType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.imageName) {
        self.imageName = try container.decode(String?.self, forKey: .imageName)
    }
    if container.contains(.sysPrep) {
        self.sysPrep = try container.decode(Bool?.self, forKey: .sysPrep)
    }
    self.osType = try container.decode(CustomImageOsTypeEnum.self, forKey: .osType)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.imageName != nil {try container.encode(self.imageName, forKey: .imageName)}
    if self.sysPrep != nil {try container.encode(self.sysPrep, forKey: .sysPrep)}
    try container.encode(self.osType, forKey: .osType)
  }
}

extension DataFactory {
  public static func createCustomImagePropertiesCustomProtocol(osType: CustomImageOsTypeEnum) -> CustomImagePropertiesCustomProtocol {
    return CustomImagePropertiesCustomData(osType: osType)
  }
}
