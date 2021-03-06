// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PtrRecordData : PtrRecordProtocol {
    public var ptrdname: String?

        enum CodingKeys: String, CodingKey {case ptrdname = "ptrdname"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.ptrdname) {
        self.ptrdname = try container.decode(String?.self, forKey: .ptrdname)
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
    if self.ptrdname != nil {try container.encode(self.ptrdname, forKey: .ptrdname)}
  }
}

extension DataFactory {
  public static func createPtrRecordProtocol() -> PtrRecordProtocol {
    return PtrRecordData()
  }
}
