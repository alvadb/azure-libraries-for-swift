// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PredictionMappingsData : PredictionMappingsProtocol {
    public var score: String?
    public var grade: String?
    public var reason: String?

        enum CodingKeys: String, CodingKey {case score = "score"
        case grade = "grade"
        case reason = "reason"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.score) {
        self.score = try container.decode(String?.self, forKey: .score)
    }
    if container.contains(.grade) {
        self.grade = try container.decode(String?.self, forKey: .grade)
    }
    if container.contains(.reason) {
        self.reason = try container.decode(String?.self, forKey: .reason)
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
    if self.score != nil {try container.encode(self.score, forKey: .score)}
    if self.grade != nil {try container.encode(self.grade, forKey: .grade)}
    if self.reason != nil {try container.encode(self.reason, forKey: .reason)}
  }
}

extension DataFactory {
  public static func createPredictionMappingsProtocol() -> PredictionMappingsProtocol {
    return PredictionMappingsData()
  }
}
