// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DiagnosticsProfileData : DiagnosticsProfileProtocol {
    public var bootDiagnostics: BootDiagnosticsProtocol?

        enum CodingKeys: String, CodingKey {case bootDiagnostics = "bootDiagnostics"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.bootDiagnostics) {
        self.bootDiagnostics = try container.decode(BootDiagnosticsData?.self, forKey: .bootDiagnostics)
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
    if self.bootDiagnostics != nil {try container.encode(self.bootDiagnostics as! BootDiagnosticsData?, forKey: .bootDiagnostics)}
  }
}

extension DataFactory {
  public static func createDiagnosticsProfileProtocol() -> DiagnosticsProfileProtocol {
    return DiagnosticsProfileData()
  }
}
