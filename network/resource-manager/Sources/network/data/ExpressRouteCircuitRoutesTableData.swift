// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExpressRouteCircuitRoutesTableData : ExpressRouteCircuitRoutesTableProtocol {
    public var network: String?
    public var nextHop: String?
    public var locPrf: String?
    public var weight: Int32?
    public var path: String?

        enum CodingKeys: String, CodingKey {case network = "network"
        case nextHop = "nextHop"
        case locPrf = "locPrf"
        case weight = "weight"
        case path = "path"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.network) {
        self.network = try container.decode(String?.self, forKey: .network)
    }
    if container.contains(.nextHop) {
        self.nextHop = try container.decode(String?.self, forKey: .nextHop)
    }
    if container.contains(.locPrf) {
        self.locPrf = try container.decode(String?.self, forKey: .locPrf)
    }
    if container.contains(.weight) {
        self.weight = try container.decode(Int32?.self, forKey: .weight)
    }
    if container.contains(.path) {
        self.path = try container.decode(String?.self, forKey: .path)
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
    if self.network != nil {try container.encode(self.network, forKey: .network)}
    if self.nextHop != nil {try container.encode(self.nextHop, forKey: .nextHop)}
    if self.locPrf != nil {try container.encode(self.locPrf, forKey: .locPrf)}
    if self.weight != nil {try container.encode(self.weight, forKey: .weight)}
    if self.path != nil {try container.encode(self.path, forKey: .path)}
  }
}

extension DataFactory {
  public static func createExpressRouteCircuitRoutesTableProtocol() -> ExpressRouteCircuitRoutesTableProtocol {
    return ExpressRouteCircuitRoutesTableData()
  }
}