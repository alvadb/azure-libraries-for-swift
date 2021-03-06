// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationGatewayConnectionDrainingData : ApplicationGatewayConnectionDrainingProtocol {
    public var enabled: Bool
    public var drainTimeoutInSec: Int32

        enum CodingKeys: String, CodingKey {case enabled = "enabled"
        case drainTimeoutInSec = "drainTimeoutInSec"
        }

  public init(enabled: Bool, drainTimeoutInSec: Int32)  {
    self.enabled = enabled
    self.drainTimeoutInSec = drainTimeoutInSec
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.enabled = try container.decode(Bool.self, forKey: .enabled)
    self.drainTimeoutInSec = try container.decode(Int32.self, forKey: .drainTimeoutInSec)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.enabled, forKey: .enabled)
    try container.encode(self.drainTimeoutInSec, forKey: .drainTimeoutInSec)
  }
}

extension DataFactory {
  public static func createApplicationGatewayConnectionDrainingProtocol(enabled: Bool, drainTimeoutInSec: Int32) -> ApplicationGatewayConnectionDrainingProtocol {
    return ApplicationGatewayConnectionDrainingData(enabled: enabled, drainTimeoutInSec: drainTimeoutInSec)
  }
}
