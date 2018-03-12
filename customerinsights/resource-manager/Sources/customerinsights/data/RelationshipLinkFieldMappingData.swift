// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RelationshipLinkFieldMappingData : RelationshipLinkFieldMappingProtocol {
    public var interactionFieldName: String
    public var linkType: LinkTypesEnum?
    public var relationshipFieldName: String

        enum CodingKeys: String, CodingKey {case interactionFieldName = "interactionFieldName"
        case linkType = "linkType"
        case relationshipFieldName = "relationshipFieldName"
        }

  public init(interactionFieldName: String, relationshipFieldName: String)  {
    self.interactionFieldName = interactionFieldName
    self.relationshipFieldName = relationshipFieldName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.interactionFieldName = try container.decode(String.self, forKey: .interactionFieldName)
    if container.contains(.linkType) {
        self.linkType = try container.decode(LinkTypesEnum?.self, forKey: .linkType)
    }
    self.relationshipFieldName = try container.decode(String.self, forKey: .relationshipFieldName)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.interactionFieldName, forKey: .interactionFieldName)
    if self.linkType != nil {try container.encode(self.linkType, forKey: .linkType)}
    try container.encode(self.relationshipFieldName, forKey: .relationshipFieldName)
  }
}

extension DataFactory {
  public static func createRelationshipLinkFieldMappingProtocol(interactionFieldName: String, relationshipFieldName: String) -> RelationshipLinkFieldMappingProtocol {
    return RelationshipLinkFieldMappingData(interactionFieldName: interactionFieldName, relationshipFieldName: relationshipFieldName)
  }
}