// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UniformInt64RangePartitionSchemeDescriptionData : UniformInt64RangePartitionSchemeDescriptionProtocol, PartitionSchemeDescriptionProtocol {
    public var count: Int32
    public var lowKey: String
    public var highKey: String

        enum CodingKeys: String, CodingKey {case count = "Count"
        case lowKey = "LowKey"
        case highKey = "HighKey"
        }

  public init(count: Int32, lowKey: String, highKey: String)  {
    self.count = count
    self.lowKey = lowKey
    self.highKey = highKey
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.count = try container.decode(Int32.self, forKey: .count)
    self.lowKey = try container.decode(String.self, forKey: .lowKey)
    self.highKey = try container.decode(String.self, forKey: .highKey)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.count, forKey: .count)
    try container.encode(self.lowKey, forKey: .lowKey)
    try container.encode(self.highKey, forKey: .highKey)
  }
}

extension DataFactory {
  public static func createUniformInt64RangePartitionSchemeDescriptionProtocol(count: Int32, lowKey: String, highKey: String) -> UniformInt64RangePartitionSchemeDescriptionProtocol {
    return UniformInt64RangePartitionSchemeDescriptionData(count: count, lowKey: lowKey, highKey: highKey)
  }
}