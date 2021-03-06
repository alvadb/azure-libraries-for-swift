// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UserPropertiesFragmentData : UserPropertiesFragmentProtocol {
    public var identity: UserIdentityFragmentProtocol?
    public var secretStore: UserSecretStoreFragmentProtocol?
    public var provisioningState: String?
    public var uniqueIdentifier: String?

        enum CodingKeys: String, CodingKey {case identity = "identity"
        case secretStore = "secretStore"
        case provisioningState = "provisioningState"
        case uniqueIdentifier = "uniqueIdentifier"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.identity) {
        self.identity = try container.decode(UserIdentityFragmentData?.self, forKey: .identity)
    }
    if container.contains(.secretStore) {
        self.secretStore = try container.decode(UserSecretStoreFragmentData?.self, forKey: .secretStore)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.uniqueIdentifier) {
        self.uniqueIdentifier = try container.decode(String?.self, forKey: .uniqueIdentifier)
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
    if self.identity != nil {try container.encode(self.identity as! UserIdentityFragmentData?, forKey: .identity)}
    if self.secretStore != nil {try container.encode(self.secretStore as! UserSecretStoreFragmentData?, forKey: .secretStore)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.uniqueIdentifier != nil {try container.encode(self.uniqueIdentifier, forKey: .uniqueIdentifier)}
  }
}

extension DataFactory {
  public static func createUserPropertiesFragmentProtocol() -> UserPropertiesFragmentProtocol {
    return UserPropertiesFragmentData()
  }
}
