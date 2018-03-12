// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BusinessIdentityData : BusinessIdentityProtocol {
    public var qualifier: String
    public var value: String

        enum CodingKeys: String, CodingKey {case qualifier = "qualifier"
        case value = "value"
        }

  public init(qualifier: String, value: String)  {
    self.qualifier = qualifier
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.qualifier = try container.decode(String.self, forKey: .qualifier)
    self.value = try container.decode(String.self, forKey: .value)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.qualifier, forKey: .qualifier)
    try container.encode(self.value, forKey: .value)
  }
}

extension DataFactory {
  public static func createBusinessIdentityProtocol(qualifier: String, value: String) -> BusinessIdentityProtocol {
    return BusinessIdentityData(qualifier: qualifier, value: value)
  }
}