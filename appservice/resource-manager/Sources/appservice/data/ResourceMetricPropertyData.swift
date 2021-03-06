// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ResourceMetricPropertyData : ResourceMetricPropertyProtocol {
    public var key: String?
    public var value: String?

        enum CodingKeys: String, CodingKey {case key = "key"
        case value = "value"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.key) {
        self.key = try container.decode(String?.self, forKey: .key)
    }
    if container.contains(.value) {
        self.value = try container.decode(String?.self, forKey: .value)
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
    if self.key != nil {try container.encode(self.key, forKey: .key)}
    if self.value != nil {try container.encode(self.value, forKey: .value)}
  }
}

extension DataFactory {
  public static func createResourceMetricPropertyProtocol() -> ResourceMetricPropertyProtocol {
    return ResourceMetricPropertyData()
  }
}
