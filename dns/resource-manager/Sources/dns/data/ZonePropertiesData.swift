// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ZonePropertiesData : ZonePropertiesProtocol {
    public var maxNumberOfRecordSets: Int64?
    public var numberOfRecordSets: Int64?
    public var nameServers: [String]?

        enum CodingKeys: String, CodingKey {case maxNumberOfRecordSets = "maxNumberOfRecordSets"
        case numberOfRecordSets = "numberOfRecordSets"
        case nameServers = "nameServers"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.maxNumberOfRecordSets) {
        self.maxNumberOfRecordSets = try container.decode(Int64?.self, forKey: .maxNumberOfRecordSets)
    }
    if container.contains(.numberOfRecordSets) {
        self.numberOfRecordSets = try container.decode(Int64?.self, forKey: .numberOfRecordSets)
    }
    if container.contains(.nameServers) {
        self.nameServers = try container.decode([String]?.self, forKey: .nameServers)
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
    if self.maxNumberOfRecordSets != nil {try container.encode(self.maxNumberOfRecordSets, forKey: .maxNumberOfRecordSets)}
    if self.numberOfRecordSets != nil {try container.encode(self.numberOfRecordSets, forKey: .numberOfRecordSets)}
    if self.nameServers != nil {try container.encode(self.nameServers as! [String]?, forKey: .nameServers)}
  }
}

extension DataFactory {
  public static func createZonePropertiesProtocol() -> ZonePropertiesProtocol {
    return ZonePropertiesData()
  }
}
