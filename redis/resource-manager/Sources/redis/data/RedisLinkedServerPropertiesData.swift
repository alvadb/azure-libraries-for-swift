// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RedisLinkedServerPropertiesData : RedisLinkedServerPropertiesProtocol, RedisLinkedServerCreatePropertiesProtocol {
    public var linkedRedisCacheId: String
    public var linkedRedisCacheLocation: String
    public var serverRole: ReplicationRoleEnum
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case linkedRedisCacheId = "linkedRedisCacheId"
        case linkedRedisCacheLocation = "linkedRedisCacheLocation"
        case serverRole = "serverRole"
        case provisioningState = "provisioningState"
        }

  public init(linkedRedisCacheId: String, linkedRedisCacheLocation: String, serverRole: ReplicationRoleEnum)  {
    self.linkedRedisCacheId = linkedRedisCacheId
    self.linkedRedisCacheLocation = linkedRedisCacheLocation
    self.serverRole = serverRole
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.linkedRedisCacheId = try container.decode(String.self, forKey: .linkedRedisCacheId)
    self.linkedRedisCacheLocation = try container.decode(String.self, forKey: .linkedRedisCacheLocation)
    self.serverRole = try container.decode(ReplicationRoleEnum.self, forKey: .serverRole)
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
    try container.encode(self.linkedRedisCacheId, forKey: .linkedRedisCacheId)
    try container.encode(self.linkedRedisCacheLocation, forKey: .linkedRedisCacheLocation)
    try container.encode(self.serverRole, forKey: .serverRole)
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createRedisLinkedServerPropertiesProtocol(linkedRedisCacheId: String, linkedRedisCacheLocation: String, serverRole: ReplicationRoleEnum) -> RedisLinkedServerPropertiesProtocol {
    return RedisLinkedServerPropertiesData(linkedRedisCacheId: linkedRedisCacheId, linkedRedisCacheLocation: linkedRedisCacheLocation, serverRole: serverRole)
  }
}