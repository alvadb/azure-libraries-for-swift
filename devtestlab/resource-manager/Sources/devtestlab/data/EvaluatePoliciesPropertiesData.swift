// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct EvaluatePoliciesPropertiesData : EvaluatePoliciesPropertiesProtocol {
    public var factName: String?
    public var factData: String?
    public var valueOffset: String?

        enum CodingKeys: String, CodingKey {case factName = "factName"
        case factData = "factData"
        case valueOffset = "valueOffset"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.factName) {
        self.factName = try container.decode(String?.self, forKey: .factName)
    }
    if container.contains(.factData) {
        self.factData = try container.decode(String?.self, forKey: .factData)
    }
    if container.contains(.valueOffset) {
        self.valueOffset = try container.decode(String?.self, forKey: .valueOffset)
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
    if self.factName != nil {try container.encode(self.factName, forKey: .factName)}
    if self.factData != nil {try container.encode(self.factData, forKey: .factData)}
    if self.valueOffset != nil {try container.encode(self.valueOffset, forKey: .valueOffset)}
  }
}

extension DataFactory {
  public static func createEvaluatePoliciesPropertiesProtocol() -> EvaluatePoliciesPropertiesProtocol {
    return EvaluatePoliciesPropertiesData()
  }
}
