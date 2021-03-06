// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SQLDataDirectoryData : SQLDataDirectoryProtocol {
    public var type: SQLDataDirectoryTypeEnum?
    public var path: String?
    public var logicalName: String?

        enum CodingKeys: String, CodingKey {case type = "type"
        case path = "path"
        case logicalName = "logicalName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.type) {
        self.type = try container.decode(SQLDataDirectoryTypeEnum?.self, forKey: .type)
    }
    if container.contains(.path) {
        self.path = try container.decode(String?.self, forKey: .path)
    }
    if container.contains(.logicalName) {
        self.logicalName = try container.decode(String?.self, forKey: .logicalName)
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
    if self.path != nil {try container.encode(self.path, forKey: .path)}
    if self.logicalName != nil {try container.encode(self.logicalName, forKey: .logicalName)}
  }
}

extension DataFactory {
  public static func createSQLDataDirectoryProtocol() -> SQLDataDirectoryProtocol {
    return SQLDataDirectoryData()
  }
}
