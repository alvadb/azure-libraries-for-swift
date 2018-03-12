// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GatewayRouteData : GatewayRouteProtocol {
    public var localAddress: String?
    public var network: String?
    public var nextHop: String?
    public var sourcePeer: String?
    public var origin: String?
    public var asPath: String?
    public var weight: Int32?

        enum CodingKeys: String, CodingKey {case localAddress = "localAddress"
        case network = "network"
        case nextHop = "nextHop"
        case sourcePeer = "sourcePeer"
        case origin = "origin"
        case asPath = "asPath"
        case weight = "weight"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.localAddress) {
        self.localAddress = try container.decode(String?.self, forKey: .localAddress)
    }
    if container.contains(.network) {
        self.network = try container.decode(String?.self, forKey: .network)
    }
    if container.contains(.nextHop) {
        self.nextHop = try container.decode(String?.self, forKey: .nextHop)
    }
    if container.contains(.sourcePeer) {
        self.sourcePeer = try container.decode(String?.self, forKey: .sourcePeer)
    }
    if container.contains(.origin) {
        self.origin = try container.decode(String?.self, forKey: .origin)
    }
    if container.contains(.asPath) {
        self.asPath = try container.decode(String?.self, forKey: .asPath)
    }
    if container.contains(.weight) {
        self.weight = try container.decode(Int32?.self, forKey: .weight)
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
    if self.localAddress != nil {try container.encode(self.localAddress, forKey: .localAddress)}
    if self.network != nil {try container.encode(self.network, forKey: .network)}
    if self.nextHop != nil {try container.encode(self.nextHop, forKey: .nextHop)}
    if self.sourcePeer != nil {try container.encode(self.sourcePeer, forKey: .sourcePeer)}
    if self.origin != nil {try container.encode(self.origin, forKey: .origin)}
    if self.asPath != nil {try container.encode(self.asPath, forKey: .asPath)}
    if self.weight != nil {try container.encode(self.weight, forKey: .weight)}
  }
}

extension DataFactory {
  public static func createGatewayRouteProtocol() -> GatewayRouteProtocol {
    return GatewayRouteData()
  }
}