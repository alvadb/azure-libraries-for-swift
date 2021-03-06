// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProtectedItemQueryObjectData : ProtectedItemQueryObjectProtocol {
    public var healthState: HealthStateEnum?
    public var backupManagementType: BackupManagementTypeEnum?
    public var itemType: DataSourceTypeEnum?
    public var policyName: String?
    public var containerName: String?
    public var backupEngineName: String?
    public var friendlyName: String?
    public var fabricName: String?
    public var backupSetName: String?

        enum CodingKeys: String, CodingKey {case healthState = "healthState"
        case backupManagementType = "backupManagementType"
        case itemType = "itemType"
        case policyName = "policyName"
        case containerName = "containerName"
        case backupEngineName = "backupEngineName"
        case friendlyName = "friendlyName"
        case fabricName = "fabricName"
        case backupSetName = "backupSetName"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.healthState) {
        self.healthState = try container.decode(HealthStateEnum?.self, forKey: .healthState)
    }
    if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(BackupManagementTypeEnum?.self, forKey: .backupManagementType)
    }
    if container.contains(.itemType) {
        self.itemType = try container.decode(DataSourceTypeEnum?.self, forKey: .itemType)
    }
    if container.contains(.policyName) {
        self.policyName = try container.decode(String?.self, forKey: .policyName)
    }
    if container.contains(.containerName) {
        self.containerName = try container.decode(String?.self, forKey: .containerName)
    }
    if container.contains(.backupEngineName) {
        self.backupEngineName = try container.decode(String?.self, forKey: .backupEngineName)
    }
    if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.fabricName) {
        self.fabricName = try container.decode(String?.self, forKey: .fabricName)
    }
    if container.contains(.backupSetName) {
        self.backupSetName = try container.decode(String?.self, forKey: .backupSetName)
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
    if self.healthState != nil {try container.encode(self.healthState, forKey: .healthState)}
    if self.backupManagementType != nil {try container.encode(self.backupManagementType, forKey: .backupManagementType)}
    if self.itemType != nil {try container.encode(self.itemType, forKey: .itemType)}
    if self.policyName != nil {try container.encode(self.policyName, forKey: .policyName)}
    if self.containerName != nil {try container.encode(self.containerName, forKey: .containerName)}
    if self.backupEngineName != nil {try container.encode(self.backupEngineName, forKey: .backupEngineName)}
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.fabricName != nil {try container.encode(self.fabricName, forKey: .fabricName)}
    if self.backupSetName != nil {try container.encode(self.backupSetName, forKey: .backupSetName)}
  }
}

extension DataFactory {
  public static func createProtectedItemQueryObjectProtocol() -> ProtectedItemQueryObjectProtocol {
    return ProtectedItemQueryObjectData()
  }
}
