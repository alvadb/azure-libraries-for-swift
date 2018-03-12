// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DomainAvailablilityCheckResultData : DomainAvailablilityCheckResultProtocol {
    public var name: String?
    public var available: Bool?
    public var domainType: DomainTypeEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case available = "available"
        case domainType = "domainType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.available) {
        self.available = try container.decode(Bool?.self, forKey: .available)
    }
    if container.contains(.domainType) {
        self.domainType = try container.decode(DomainTypeEnum?.self, forKey: .domainType)
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
    if self.available != nil {try container.encode(self.available, forKey: .available)}
    if self.domainType != nil {try container.encode(self.domainType, forKey: .domainType)}
  }
}

extension DataFactory {
  public static func createDomainAvailablilityCheckResultProtocol() -> DomainAvailablilityCheckResultProtocol {
    return DomainAvailablilityCheckResultData()
  }
}