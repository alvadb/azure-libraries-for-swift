// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct MigrateMySqlRequestPropertiesData : MigrateMySqlRequestPropertiesProtocol {
    public var connectionString: String?
    public var migrationType: MySqlMigrationTypeEnum?

        enum CodingKeys: String, CodingKey {case connectionString = "connectionString"
        case migrationType = "migrationType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.connectionString) {
        self.connectionString = try container.decode(String?.self, forKey: .connectionString)
    }
    if container.contains(.migrationType) {
        self.migrationType = try container.decode(MySqlMigrationTypeEnum?.self, forKey: .migrationType)
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
    if self.connectionString != nil {try container.encode(self.connectionString, forKey: .connectionString)}
    if self.migrationType != nil {try container.encode(self.migrationType, forKey: .migrationType)}
  }
}

extension DataFactory {
  public static func createMigrateMySqlRequestPropertiesProtocol() -> MigrateMySqlRequestPropertiesProtocol {
    return MigrateMySqlRequestPropertiesData()
  }
}
