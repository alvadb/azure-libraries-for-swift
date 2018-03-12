// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AvailableProvidersListData : AvailableProvidersListProtocol {
    public var countries: [AvailableProvidersListCountryProtocol]

        enum CodingKeys: String, CodingKey {case countries = "countries"
        }

  public init(countries: [AvailableProvidersListCountryProtocol])  {
    self.countries = countries
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.countries = try container.decode([AvailableProvidersListCountryData].self, forKey: .countries)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.countries as! [AvailableProvidersListCountryData], forKey: .countries)
  }
}

extension DataFactory {
  public static func createAvailableProvidersListProtocol(countries: [AvailableProvidersListCountryProtocol]) -> AvailableProvidersListProtocol {
    return AvailableProvidersListData(countries: countries)
  }
}