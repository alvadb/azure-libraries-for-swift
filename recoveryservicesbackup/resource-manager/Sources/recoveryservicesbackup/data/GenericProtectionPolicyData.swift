// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GenericProtectionPolicyData : GenericProtectionPolicyProtocol, ProtectionPolicyProtocol {
    public var protectedItemsCount: Int32?
    public var subProtectionPolicy: [SubProtectionPolicyProtocol?]?
    public var timeZone: String?
    public var fabricName: String?

        enum CodingKeys: String, CodingKey {case protectedItemsCount = "protectedItemsCount"
        case subProtectionPolicy = "subProtectionPolicy"
        case timeZone = "timeZone"
        case fabricName = "fabricName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.protectedItemsCount) {
        self.protectedItemsCount = try container.decode(Int32?.self, forKey: .protectedItemsCount)
    }
    if container.contains(.subProtectionPolicy) {
        self.subProtectionPolicy = try container.decode([SubProtectionPolicyData?]?.self, forKey: .subProtectionPolicy)
    }
    if container.contains(.timeZone) {
        self.timeZone = try container.decode(String?.self, forKey: .timeZone)
    }
    if container.contains(.fabricName) {
        self.fabricName = try container.decode(String?.self, forKey: .fabricName)
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
    if self.protectedItemsCount != nil {try container.encode(self.protectedItemsCount, forKey: .protectedItemsCount)}
    if self.subProtectionPolicy != nil {try container.encode(self.subProtectionPolicy as! [SubProtectionPolicyData?]?, forKey: .subProtectionPolicy)}
    if self.timeZone != nil {try container.encode(self.timeZone, forKey: .timeZone)}
    if self.fabricName != nil {try container.encode(self.fabricName, forKey: .fabricName)}
  }
}

extension DataFactory {
  public static func createGenericProtectionPolicyProtocol() -> GenericProtectionPolicyProtocol {
    return GenericProtectionPolicyData()
  }
}
