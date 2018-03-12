// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SyncFullSchemaTableData : SyncFullSchemaTableProtocol {
    public var columns: [SyncFullSchemaTableColumnProtocol?]?
    public var errorId: String?
    public var hasError: Bool?
    public var name: String?
    public var quotedName: String?

        enum CodingKeys: String, CodingKey {case columns = "columns"
        case errorId = "errorId"
        case hasError = "hasError"
        case name = "name"
        case quotedName = "quotedName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.columns) {
        self.columns = try container.decode([SyncFullSchemaTableColumnData?]?.self, forKey: .columns)
    }
    if container.contains(.errorId) {
        self.errorId = try container.decode(String?.self, forKey: .errorId)
    }
    if container.contains(.hasError) {
        self.hasError = try container.decode(Bool?.self, forKey: .hasError)
    }
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.quotedName) {
        self.quotedName = try container.decode(String?.self, forKey: .quotedName)
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
    if self.columns != nil {try container.encode(self.columns as! [SyncFullSchemaTableColumnData?]?, forKey: .columns)}
    if self.errorId != nil {try container.encode(self.errorId, forKey: .errorId)}
    if self.hasError != nil {try container.encode(self.hasError, forKey: .hasError)}
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.quotedName != nil {try container.encode(self.quotedName, forKey: .quotedName)}
  }
}

extension DataFactory {
  public static func createSyncFullSchemaTableProtocol() -> SyncFullSchemaTableProtocol {
    return SyncFullSchemaTableData()
  }
}