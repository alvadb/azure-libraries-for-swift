// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ActivateApplicationPackageParametersData : ActivateApplicationPackageParametersProtocol {
    public var format: String

        enum CodingKeys: String, CodingKey {case format = "format"
        }

  public init(format: String)  {
    self.format = format
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.format = try container.decode(String.self, forKey: .format)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.format, forKey: .format)
  }
}

extension DataFactory {
  public static func createActivateApplicationPackageParametersProtocol(format: String) -> ActivateApplicationPackageParametersProtocol {
    return ActivateApplicationPackageParametersData(format: format)
  }
}
