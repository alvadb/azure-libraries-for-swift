// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct IntegrationAccountSchemaFilterData : IntegrationAccountSchemaFilterProtocol {
    public var schemaType: SchemaTypeEnum

        enum CodingKeys: String, CodingKey {case schemaType = "schemaType"
        }

  public init(schemaType: SchemaTypeEnum)  {
    self.schemaType = schemaType
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.schemaType = try container.decode(SchemaTypeEnum.self, forKey: .schemaType)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.schemaType, forKey: .schemaType)
  }
}

extension DataFactory {
  public static func createIntegrationAccountSchemaFilterProtocol(schemaType: SchemaTypeEnum) -> IntegrationAccountSchemaFilterProtocol {
    return IntegrationAccountSchemaFilterData(schemaType: schemaType)
  }
}
