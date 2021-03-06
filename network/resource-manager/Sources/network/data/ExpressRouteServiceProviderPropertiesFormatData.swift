// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExpressRouteServiceProviderPropertiesFormatData : ExpressRouteServiceProviderPropertiesFormatProtocol {
    public var peeringLocations: [String]?
    public var bandwidthsOffered: [ExpressRouteServiceProviderBandwidthsOfferedProtocol?]?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case peeringLocations = "peeringLocations"
        case bandwidthsOffered = "bandwidthsOffered"
        case provisioningState = "provisioningState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.peeringLocations) {
        self.peeringLocations = try container.decode([String]?.self, forKey: .peeringLocations)
    }
    if container.contains(.bandwidthsOffered) {
        self.bandwidthsOffered = try container.decode([ExpressRouteServiceProviderBandwidthsOfferedData?]?.self, forKey: .bandwidthsOffered)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.peeringLocations != nil {try container.encode(self.peeringLocations as! [String]?, forKey: .peeringLocations)}
    if self.bandwidthsOffered != nil {try container.encode(self.bandwidthsOffered as! [ExpressRouteServiceProviderBandwidthsOfferedData?]?, forKey: .bandwidthsOffered)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createExpressRouteServiceProviderPropertiesFormatProtocol() -> ExpressRouteServiceProviderPropertiesFormatProtocol {
    return ExpressRouteServiceProviderPropertiesFormatData()
  }
}
