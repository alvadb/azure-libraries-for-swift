// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AS2SecuritySettingsData : AS2SecuritySettingsProtocol {
    public var overrideGroupSigningCertificate: Bool
    public var signingCertificateName: String?
    public var encryptionCertificateName: String?
    public var enableNrrForInboundEncodedMessages: Bool
    public var enableNrrForInboundDecodedMessages: Bool
    public var enableNrrForOutboundMdn: Bool
    public var enableNrrForOutboundEncodedMessages: Bool
    public var enableNrrForOutboundDecodedMessages: Bool
    public var enableNrrForInboundMdn: Bool
    public var sha2AlgorithmFormat: String?

        enum CodingKeys: String, CodingKey {case overrideGroupSigningCertificate = "overrideGroupSigningCertificate"
        case signingCertificateName = "signingCertificateName"
        case encryptionCertificateName = "encryptionCertificateName"
        case enableNrrForInboundEncodedMessages = "enableNrrForInboundEncodedMessages"
        case enableNrrForInboundDecodedMessages = "enableNrrForInboundDecodedMessages"
        case enableNrrForOutboundMdn = "enableNrrForOutboundMdn"
        case enableNrrForOutboundEncodedMessages = "enableNrrForOutboundEncodedMessages"
        case enableNrrForOutboundDecodedMessages = "enableNrrForOutboundDecodedMessages"
        case enableNrrForInboundMdn = "enableNrrForInboundMdn"
        case sha2AlgorithmFormat = "sha2AlgorithmFormat"
        }

  public init(overrideGroupSigningCertificate: Bool, enableNrrForInboundEncodedMessages: Bool, enableNrrForInboundDecodedMessages: Bool, enableNrrForOutboundMdn: Bool, enableNrrForOutboundEncodedMessages: Bool, enableNrrForOutboundDecodedMessages: Bool, enableNrrForInboundMdn: Bool)  {
    self.overrideGroupSigningCertificate = overrideGroupSigningCertificate
    self.enableNrrForInboundEncodedMessages = enableNrrForInboundEncodedMessages
    self.enableNrrForInboundDecodedMessages = enableNrrForInboundDecodedMessages
    self.enableNrrForOutboundMdn = enableNrrForOutboundMdn
    self.enableNrrForOutboundEncodedMessages = enableNrrForOutboundEncodedMessages
    self.enableNrrForOutboundDecodedMessages = enableNrrForOutboundDecodedMessages
    self.enableNrrForInboundMdn = enableNrrForInboundMdn
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.overrideGroupSigningCertificate = try container.decode(Bool.self, forKey: .overrideGroupSigningCertificate)
    if container.contains(.signingCertificateName) {
        self.signingCertificateName = try container.decode(String?.self, forKey: .signingCertificateName)
    }
    if container.contains(.encryptionCertificateName) {
        self.encryptionCertificateName = try container.decode(String?.self, forKey: .encryptionCertificateName)
    }
    self.enableNrrForInboundEncodedMessages = try container.decode(Bool.self, forKey: .enableNrrForInboundEncodedMessages)
    self.enableNrrForInboundDecodedMessages = try container.decode(Bool.self, forKey: .enableNrrForInboundDecodedMessages)
    self.enableNrrForOutboundMdn = try container.decode(Bool.self, forKey: .enableNrrForOutboundMdn)
    self.enableNrrForOutboundEncodedMessages = try container.decode(Bool.self, forKey: .enableNrrForOutboundEncodedMessages)
    self.enableNrrForOutboundDecodedMessages = try container.decode(Bool.self, forKey: .enableNrrForOutboundDecodedMessages)
    self.enableNrrForInboundMdn = try container.decode(Bool.self, forKey: .enableNrrForInboundMdn)
    if container.contains(.sha2AlgorithmFormat) {
        self.sha2AlgorithmFormat = try container.decode(String?.self, forKey: .sha2AlgorithmFormat)
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
    try container.encode(self.overrideGroupSigningCertificate, forKey: .overrideGroupSigningCertificate)
    if self.signingCertificateName != nil {try container.encode(self.signingCertificateName, forKey: .signingCertificateName)}
    if self.encryptionCertificateName != nil {try container.encode(self.encryptionCertificateName, forKey: .encryptionCertificateName)}
    try container.encode(self.enableNrrForInboundEncodedMessages, forKey: .enableNrrForInboundEncodedMessages)
    try container.encode(self.enableNrrForInboundDecodedMessages, forKey: .enableNrrForInboundDecodedMessages)
    try container.encode(self.enableNrrForOutboundMdn, forKey: .enableNrrForOutboundMdn)
    try container.encode(self.enableNrrForOutboundEncodedMessages, forKey: .enableNrrForOutboundEncodedMessages)
    try container.encode(self.enableNrrForOutboundDecodedMessages, forKey: .enableNrrForOutboundDecodedMessages)
    try container.encode(self.enableNrrForInboundMdn, forKey: .enableNrrForInboundMdn)
    if self.sha2AlgorithmFormat != nil {try container.encode(self.sha2AlgorithmFormat, forKey: .sha2AlgorithmFormat)}
  }
}

extension DataFactory {
  public static func createAS2SecuritySettingsProtocol(overrideGroupSigningCertificate: Bool, enableNrrForInboundEncodedMessages: Bool, enableNrrForInboundDecodedMessages: Bool, enableNrrForOutboundMdn: Bool, enableNrrForOutboundEncodedMessages: Bool, enableNrrForOutboundDecodedMessages: Bool, enableNrrForInboundMdn: Bool) -> AS2SecuritySettingsProtocol {
    return AS2SecuritySettingsData(overrideGroupSigningCertificate: overrideGroupSigningCertificate, enableNrrForInboundEncodedMessages: enableNrrForInboundEncodedMessages, enableNrrForInboundDecodedMessages: enableNrrForInboundDecodedMessages, enableNrrForOutboundMdn: enableNrrForOutboundMdn, enableNrrForOutboundEncodedMessages: enableNrrForOutboundEncodedMessages, enableNrrForOutboundDecodedMessages: enableNrrForOutboundDecodedMessages, enableNrrForInboundMdn: enableNrrForInboundMdn)
  }
}