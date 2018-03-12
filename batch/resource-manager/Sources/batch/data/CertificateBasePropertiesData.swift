// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CertificateBasePropertiesData : CertificateBasePropertiesProtocol {
    public var thumbprintAlgorithm: String?
    public var thumbprint: String?
    public var format: CertificateFormatEnum?

        enum CodingKeys: String, CodingKey {case thumbprintAlgorithm = "thumbprintAlgorithm"
        case thumbprint = "thumbprint"
        case format = "format"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.thumbprintAlgorithm) {
        self.thumbprintAlgorithm = try container.decode(String?.self, forKey: .thumbprintAlgorithm)
    }
    if container.contains(.thumbprint) {
        self.thumbprint = try container.decode(String?.self, forKey: .thumbprint)
    }
    if container.contains(.format) {
        self.format = try container.decode(CertificateFormatEnum?.self, forKey: .format)
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
    if self.thumbprintAlgorithm != nil {try container.encode(self.thumbprintAlgorithm, forKey: .thumbprintAlgorithm)}
    if self.thumbprint != nil {try container.encode(self.thumbprint, forKey: .thumbprint)}
    if self.format != nil {try container.encode(self.format, forKey: .format)}
  }
}

extension DataFactory {
  public static func createCertificateBasePropertiesProtocol() -> CertificateBasePropertiesProtocol {
    return CertificateBasePropertiesData()
  }
}