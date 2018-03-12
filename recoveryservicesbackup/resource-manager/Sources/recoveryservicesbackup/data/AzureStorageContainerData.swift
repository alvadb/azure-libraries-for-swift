// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureStorageContainerData : AzureStorageContainerProtocol, ProtectionContainerProtocol {
    public var friendlyName: String?
    public var backupManagementType: BackupManagementTypeEnum?
    public var registrationStatus: String?
    public var healthStatus: String?
    public var sourceResourceId: String?
    public var storageAccountVersion: String?
    public var resourceGroup: String?
    public var protectedItemCount: Int64?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case backupManagementType = "backupManagementType"
        case registrationStatus = "registrationStatus"
        case healthStatus = "healthStatus"
        case sourceResourceId = "sourceResourceId"
        case storageAccountVersion = "storageAccountVersion"
        case resourceGroup = "resourceGroup"
        case protectedItemCount = "protectedItemCount"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.backupManagementType) {
        self.backupManagementType = try container.decode(BackupManagementTypeEnum?.self, forKey: .backupManagementType)
    }
    if container.contains(.registrationStatus) {
        self.registrationStatus = try container.decode(String?.self, forKey: .registrationStatus)
    }
    if container.contains(.healthStatus) {
        self.healthStatus = try container.decode(String?.self, forKey: .healthStatus)
    }
    if container.contains(.sourceResourceId) {
        self.sourceResourceId = try container.decode(String?.self, forKey: .sourceResourceId)
    }
    if container.contains(.storageAccountVersion) {
        self.storageAccountVersion = try container.decode(String?.self, forKey: .storageAccountVersion)
    }
    if container.contains(.resourceGroup) {
        self.resourceGroup = try container.decode(String?.self, forKey: .resourceGroup)
    }
    if container.contains(.protectedItemCount) {
        self.protectedItemCount = try container.decode(Int64?.self, forKey: .protectedItemCount)
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
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.backupManagementType != nil {try container.encode(self.backupManagementType, forKey: .backupManagementType)}
    if self.registrationStatus != nil {try container.encode(self.registrationStatus, forKey: .registrationStatus)}
    if self.healthStatus != nil {try container.encode(self.healthStatus, forKey: .healthStatus)}
    if self.sourceResourceId != nil {try container.encode(self.sourceResourceId, forKey: .sourceResourceId)}
    if self.storageAccountVersion != nil {try container.encode(self.storageAccountVersion, forKey: .storageAccountVersion)}
    if self.resourceGroup != nil {try container.encode(self.resourceGroup, forKey: .resourceGroup)}
    if self.protectedItemCount != nil {try container.encode(self.protectedItemCount, forKey: .protectedItemCount)}
  }
}

extension DataFactory {
  public static func createAzureStorageContainerProtocol() -> AzureStorageContainerProtocol {
    return AzureStorageContainerData()
  }
}