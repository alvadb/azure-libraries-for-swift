// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TopologyData : TopologyProtocol {
    public var id: String?
    public var createdDateTime: Date?
    public var lastModified: Date?
    public var resources: [TopologyResourceProtocol?]?

        enum CodingKeys: String, CodingKey {case id = "id"
        case createdDateTime = "createdDateTime"
        case lastModified = "lastModified"
        case resources = "resources"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.createdDateTime) {
        self.createdDateTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdDateTime)), format: .dateTime)
    }
    if container.contains(.lastModified) {
        self.lastModified = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModified)), format: .dateTime)
    }
    if container.contains(.resources) {
        self.resources = try container.decode([TopologyResourceData?]?.self, forKey: .resources)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.createdDateTime != nil {
        try container.encode(DateConverter.toString(date: self.createdDateTime!, format: .dateTime), forKey: .createdDateTime)
    }
    if self.lastModified != nil {
        try container.encode(DateConverter.toString(date: self.lastModified!, format: .dateTime), forKey: .lastModified)
    }
    if self.resources != nil {try container.encode(self.resources as! [TopologyResourceData?]?, forKey: .resources)}
  }
}

extension DataFactory {
  public static func createTopologyProtocol() -> TopologyProtocol {
    return TopologyData()
  }
}
