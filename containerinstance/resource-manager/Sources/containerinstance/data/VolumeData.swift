// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VolumeData : VolumeProtocol {
    public var name: String
    public var azureFile: AzureFileVolumeProtocol?
    public var emptyDir: [String: String?]?
    public var secret: [String:String]?
    public var gitRepo: GitRepoVolumeProtocol?

        enum CodingKeys: String, CodingKey {case name = "name"
        case azureFile = "azureFile"
        case emptyDir = "emptyDir"
        case secret = "secret"
        case gitRepo = "gitRepo"
        }

  public init(name: String)  {
    self.name = name
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    if container.contains(.azureFile) {
        self.azureFile = try container.decode(AzureFileVolumeData?.self, forKey: .azureFile)
    }
    if container.contains(.emptyDir) {
        self.emptyDir = try container.decode([String: String?]?.self, forKey: .emptyDir)
    }
    if container.contains(.secret) {
        self.secret = try container.decode([String:String]?.self, forKey: .secret)
    }
    if container.contains(.gitRepo) {
        self.gitRepo = try container.decode(GitRepoVolumeData?.self, forKey: .gitRepo)
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
    try container.encode(self.name, forKey: .name)
    if self.azureFile != nil {try container.encode(self.azureFile as! AzureFileVolumeData?, forKey: .azureFile)}
    if self.emptyDir != nil {try container.encode(self.emptyDir, forKey: .emptyDir)}
    if self.secret != nil {try container.encode(self.secret, forKey: .secret)}
    if self.gitRepo != nil {try container.encode(self.gitRepo as! GitRepoVolumeData?, forKey: .gitRepo)}
  }
}

extension DataFactory {
  public static func createVolumeProtocol(name: String) -> VolumeProtocol {
    return VolumeData(name: name)
  }
}