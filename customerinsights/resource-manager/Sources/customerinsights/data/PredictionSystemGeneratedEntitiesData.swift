// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PredictionSystemGeneratedEntitiesData : PredictionSystemGeneratedEntitiesProtocol {
    public var generatedInteractionTypes: [String]?
    public var generatedLinks: [String]?
    public var generatedKpis: [String:String]?

        enum CodingKeys: String, CodingKey {case generatedInteractionTypes = "generatedInteractionTypes"
        case generatedLinks = "generatedLinks"
        case generatedKpis = "generatedKpis"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.generatedInteractionTypes) {
        self.generatedInteractionTypes = try container.decode([String]?.self, forKey: .generatedInteractionTypes)
    }
    if container.contains(.generatedLinks) {
        self.generatedLinks = try container.decode([String]?.self, forKey: .generatedLinks)
    }
    if container.contains(.generatedKpis) {
        self.generatedKpis = try container.decode([String:String]?.self, forKey: .generatedKpis)
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
    if self.generatedInteractionTypes != nil {try container.encode(self.generatedInteractionTypes as! [String]?, forKey: .generatedInteractionTypes)}
    if self.generatedLinks != nil {try container.encode(self.generatedLinks as! [String]?, forKey: .generatedLinks)}
    if self.generatedKpis != nil {try container.encode(self.generatedKpis, forKey: .generatedKpis)}
  }
}

extension DataFactory {
  public static func createPredictionSystemGeneratedEntitiesProtocol() -> PredictionSystemGeneratedEntitiesProtocol {
    return PredictionSystemGeneratedEntitiesData()
  }
}
