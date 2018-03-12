// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DataSourceData : DataSourceProtocol {
    public var instructions: [String]?
    public var dataSourceUri: [NameValuePairProtocol?]?

        enum CodingKeys: String, CodingKey {case instructions = "instructions"
        case dataSourceUri = "dataSourceUri"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.instructions) {
        self.instructions = try container.decode([String]?.self, forKey: .instructions)
    }
    if container.contains(.dataSourceUri) {
        self.dataSourceUri = try container.decode([NameValuePairData?]?.self, forKey: .dataSourceUri)
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
    if self.instructions != nil {try container.encode(self.instructions as! [String]?, forKey: .instructions)}
    if self.dataSourceUri != nil {try container.encode(self.dataSourceUri as! [NameValuePairData?]?, forKey: .dataSourceUri)}
  }
}

extension DataFactory {
  public static func createDataSourceProtocol() -> DataSourceProtocol {
    return DataSourceData()
  }
}