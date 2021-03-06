// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectivityHopData : ConnectivityHopProtocol {
    public var type: String?
    public var id: String?
    public var address: String?
    public var resourceId: String?
    public var nextHopIds: [String]?
    public var issues: [ConnectivityIssueProtocol?]?

        enum CodingKeys: String, CodingKey {case type = "type"
        case id = "id"
        case address = "address"
        case resourceId = "resourceId"
        case nextHopIds = "nextHopIds"
        case issues = "issues"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.address) {
        self.address = try container.decode(String?.self, forKey: .address)
    }
    if container.contains(.resourceId) {
        self.resourceId = try container.decode(String?.self, forKey: .resourceId)
    }
    if container.contains(.nextHopIds) {
        self.nextHopIds = try container.decode([String]?.self, forKey: .nextHopIds)
    }
    if container.contains(.issues) {
        self.issues = try container.decode([ConnectivityIssueData?]?.self, forKey: .issues)
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
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.address != nil {try container.encode(self.address, forKey: .address)}
    if self.resourceId != nil {try container.encode(self.resourceId, forKey: .resourceId)}
    if self.nextHopIds != nil {try container.encode(self.nextHopIds as! [String]?, forKey: .nextHopIds)}
    if self.issues != nil {try container.encode(self.issues as! [ConnectivityIssueData?]?, forKey: .issues)}
  }
}

extension DataFactory {
  public static func createConnectivityHopProtocol() -> ConnectivityHopProtocol {
    return ConnectivityHopData()
  }
}
