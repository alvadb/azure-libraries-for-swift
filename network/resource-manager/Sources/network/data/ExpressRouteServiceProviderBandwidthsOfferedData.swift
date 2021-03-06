// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExpressRouteServiceProviderBandwidthsOfferedData : ExpressRouteServiceProviderBandwidthsOfferedProtocol {
    public var offerName: String?
    public var valueInMbps: Int32?

        enum CodingKeys: String, CodingKey {case offerName = "offerName"
        case valueInMbps = "valueInMbps"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.offerName) {
        self.offerName = try container.decode(String?.self, forKey: .offerName)
    }
    if container.contains(.valueInMbps) {
        self.valueInMbps = try container.decode(Int32?.self, forKey: .valueInMbps)
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
    if self.offerName != nil {try container.encode(self.offerName, forKey: .offerName)}
    if self.valueInMbps != nil {try container.encode(self.valueInMbps, forKey: .valueInMbps)}
  }
}

extension DataFactory {
  public static func createExpressRouteServiceProviderBandwidthsOfferedProtocol() -> ExpressRouteServiceProviderBandwidthsOfferedProtocol {
    return ExpressRouteServiceProviderBandwidthsOfferedData()
  }
}
