// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct UserPropertiesData : UserPropertiesProtocol {
    public var userName: String?
    public var publishingUserName: String?
    public var publishingPassword: String?
    public var publishingPasswordHash: String?
    public var publishingPasswordHashSalt: String?

        enum CodingKeys: String, CodingKey {case userName = "name"
        case publishingUserName = "publishingUserName"
        case publishingPassword = "publishingPassword"
        case publishingPasswordHash = "publishingPasswordHash"
        case publishingPasswordHashSalt = "publishingPasswordHashSalt"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.userName) {
        self.userName = try container.decode(String?.self, forKey: .userName)
    }
    if container.contains(.publishingUserName) {
        self.publishingUserName = try container.decode(String?.self, forKey: .publishingUserName)
    }
    if container.contains(.publishingPassword) {
        self.publishingPassword = try container.decode(String?.self, forKey: .publishingPassword)
    }
    if container.contains(.publishingPasswordHash) {
        self.publishingPasswordHash = try container.decode(String?.self, forKey: .publishingPasswordHash)
    }
    if container.contains(.publishingPasswordHashSalt) {
        self.publishingPasswordHashSalt = try container.decode(String?.self, forKey: .publishingPasswordHashSalt)
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
    if self.userName != nil {try container.encode(self.userName, forKey: .userName)}
    if self.publishingUserName != nil {try container.encode(self.publishingUserName, forKey: .publishingUserName)}
    if self.publishingPassword != nil {try container.encode(self.publishingPassword, forKey: .publishingPassword)}
    if self.publishingPasswordHash != nil {try container.encode(self.publishingPasswordHash, forKey: .publishingPasswordHash)}
    if self.publishingPasswordHashSalt != nil {try container.encode(self.publishingPasswordHashSalt, forKey: .publishingPasswordHashSalt)}
  }
}

extension DataFactory {
  public static func createUserPropertiesProtocol() -> UserPropertiesProtocol {
    return UserPropertiesData()
  }
}
