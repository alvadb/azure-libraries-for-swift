// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct BootDiagnosticsInstanceViewData : BootDiagnosticsInstanceViewProtocol {
    public var consoleScreenshotBlobUri: String?
    public var serialConsoleLogBlobUri: String?

        enum CodingKeys: String, CodingKey {case consoleScreenshotBlobUri = "consoleScreenshotBlobUri"
        case serialConsoleLogBlobUri = "serialConsoleLogBlobUri"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.consoleScreenshotBlobUri) {
        self.consoleScreenshotBlobUri = try container.decode(String?.self, forKey: .consoleScreenshotBlobUri)
    }
    if container.contains(.serialConsoleLogBlobUri) {
        self.serialConsoleLogBlobUri = try container.decode(String?.self, forKey: .serialConsoleLogBlobUri)
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
    if self.consoleScreenshotBlobUri != nil {try container.encode(self.consoleScreenshotBlobUri, forKey: .consoleScreenshotBlobUri)}
    if self.serialConsoleLogBlobUri != nil {try container.encode(self.serialConsoleLogBlobUri, forKey: .serialConsoleLogBlobUri)}
  }
}

extension DataFactory {
  public static func createBootDiagnosticsInstanceViewProtocol() -> BootDiagnosticsInstanceViewProtocol {
    return BootDiagnosticsInstanceViewData()
  }
}
