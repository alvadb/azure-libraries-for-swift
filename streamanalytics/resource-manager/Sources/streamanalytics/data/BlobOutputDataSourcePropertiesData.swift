// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BlobOutputDataSourcePropertiesData : BlobOutputDataSourcePropertiesProtocol, BlobDataSourcePropertiesProtocol {
    public var storageAccounts: [StorageAccountProtocol?]?
    public var container: String?
    public var pathPattern: String?
    public var dateFormat: String?
    public var timeFormat: String?

        enum CodingKeys: String, CodingKey {case storageAccounts = "storageAccounts"
        case container = "container"
        case pathPattern = "pathPattern"
        case dateFormat = "dateFormat"
        case timeFormat = "timeFormat"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.storageAccounts) {
        self.storageAccounts = try container.decode([StorageAccountData?]?.self, forKey: .storageAccounts)
    }
    if container.contains(.container) {
        self.container = try container.decode(String?.self, forKey: .container)
    }
    if container.contains(.pathPattern) {
        self.pathPattern = try container.decode(String?.self, forKey: .pathPattern)
    }
    if container.contains(.dateFormat) {
        self.dateFormat = try container.decode(String?.self, forKey: .dateFormat)
    }
    if container.contains(.timeFormat) {
        self.timeFormat = try container.decode(String?.self, forKey: .timeFormat)
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
    if self.storageAccounts != nil {try container.encode(self.storageAccounts as! [StorageAccountData?]?, forKey: .storageAccounts)}
    if self.container != nil {try container.encode(self.container, forKey: .container)}
    if self.pathPattern != nil {try container.encode(self.pathPattern, forKey: .pathPattern)}
    if self.dateFormat != nil {try container.encode(self.dateFormat, forKey: .dateFormat)}
    if self.timeFormat != nil {try container.encode(self.timeFormat, forKey: .timeFormat)}
  }
}

extension DataFactory {
  public static func createBlobOutputDataSourcePropertiesProtocol() -> BlobOutputDataSourcePropertiesProtocol {
    return BlobOutputDataSourcePropertiesData()
  }
}
