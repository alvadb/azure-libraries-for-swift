// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServiceTierAdvisorListResultData : ServiceTierAdvisorListResultProtocol {
    public var value: [ServiceTierAdvisorProtocol]

        enum CodingKeys: String, CodingKey {case value = "value"
        }

  public init(value: [ServiceTierAdvisorProtocol])  {
    self.value = value
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.value = try container.decode([ServiceTierAdvisorData].self, forKey: .value)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.value as! [ServiceTierAdvisorData], forKey: .value)
  }
}

extension DataFactory {
  public static func createServiceTierAdvisorListResultProtocol(value: [ServiceTierAdvisorProtocol]) -> ServiceTierAdvisorListResultProtocol {
    return ServiceTierAdvisorListResultData(value: value)
  }
}