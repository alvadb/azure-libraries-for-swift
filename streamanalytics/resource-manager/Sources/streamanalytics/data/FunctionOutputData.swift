// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FunctionOutputData : FunctionOutputProtocol {
    public var dataType: String?

        enum CodingKeys: String, CodingKey {case dataType = "dataType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dataType) {
        self.dataType = try container.decode(String?.self, forKey: .dataType)
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
    if self.dataType != nil {try container.encode(self.dataType, forKey: .dataType)}
  }
}

extension DataFactory {
  public static func createFunctionOutputProtocol() -> FunctionOutputProtocol {
    return FunctionOutputData()
  }
}
