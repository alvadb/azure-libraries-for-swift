// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct KeyVaultKeyReferenceData : KeyVaultKeyReferenceProtocol {
    public var keyVault: KeyVaultKeyReferenceKeyVaultProtocol
    public var keyName: String
    public var keyVersion: String?

        enum CodingKeys: String, CodingKey {case keyVault = "keyVault"
        case keyName = "keyName"
        case keyVersion = "keyVersion"
        }

  public init(keyVault: KeyVaultKeyReferenceKeyVaultProtocol, keyName: String)  {
    self.keyVault = keyVault
    self.keyName = keyName
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.keyVault = try container.decode(KeyVaultKeyReferenceKeyVaultData.self, forKey: .keyVault)
    self.keyName = try container.decode(String.self, forKey: .keyName)
    if container.contains(.keyVersion) {
        self.keyVersion = try container.decode(String?.self, forKey: .keyVersion)
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
    try container.encode(self.keyVault as! KeyVaultKeyReferenceKeyVaultData, forKey: .keyVault)
    try container.encode(self.keyName, forKey: .keyName)
    if self.keyVersion != nil {try container.encode(self.keyVersion, forKey: .keyVersion)}
  }
}

extension DataFactory {
  public static func createKeyVaultKeyReferenceProtocol(keyVault: KeyVaultKeyReferenceKeyVaultProtocol, keyName: String) -> KeyVaultKeyReferenceProtocol {
    return KeyVaultKeyReferenceData(keyVault: keyVault, keyName: keyName)
  }
}
