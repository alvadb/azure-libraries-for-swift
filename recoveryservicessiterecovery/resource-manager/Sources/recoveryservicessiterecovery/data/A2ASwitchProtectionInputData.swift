// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct A2ASwitchProtectionInputData : A2ASwitchProtectionInputProtocol, SwitchProtectionProviderSpecificInputProtocol {
    public var recoveryContainerId: String?
    public var vmDisks: [A2AVmDiskInputDetailsProtocol?]?
    public var vmManagedDisks: [A2AVmManagedDiskInputDetailsProtocol?]?
    public var recoveryResourceGroupId: String?
    public var recoveryCloudServiceId: String?
    public var recoveryAvailabilitySetId: String?
    public var policyId: String?
    public var recoveryBootDiagStorageAccountId: String?

        enum CodingKeys: String, CodingKey {case recoveryContainerId = "recoveryContainerId"
        case vmDisks = "vmDisks"
        case vmManagedDisks = "vmManagedDisks"
        case recoveryResourceGroupId = "recoveryResourceGroupId"
        case recoveryCloudServiceId = "recoveryCloudServiceId"
        case recoveryAvailabilitySetId = "recoveryAvailabilitySetId"
        case policyId = "policyId"
        case recoveryBootDiagStorageAccountId = "recoveryBootDiagStorageAccountId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.recoveryContainerId) {
        self.recoveryContainerId = try container.decode(String?.self, forKey: .recoveryContainerId)
    }
    if container.contains(.vmDisks) {
        self.vmDisks = try container.decode([A2AVmDiskInputDetailsData?]?.self, forKey: .vmDisks)
    }
    if container.contains(.vmManagedDisks) {
        self.vmManagedDisks = try container.decode([A2AVmManagedDiskInputDetailsData?]?.self, forKey: .vmManagedDisks)
    }
    if container.contains(.recoveryResourceGroupId) {
        self.recoveryResourceGroupId = try container.decode(String?.self, forKey: .recoveryResourceGroupId)
    }
    if container.contains(.recoveryCloudServiceId) {
        self.recoveryCloudServiceId = try container.decode(String?.self, forKey: .recoveryCloudServiceId)
    }
    if container.contains(.recoveryAvailabilitySetId) {
        self.recoveryAvailabilitySetId = try container.decode(String?.self, forKey: .recoveryAvailabilitySetId)
    }
    if container.contains(.policyId) {
        self.policyId = try container.decode(String?.self, forKey: .policyId)
    }
    if container.contains(.recoveryBootDiagStorageAccountId) {
        self.recoveryBootDiagStorageAccountId = try container.decode(String?.self, forKey: .recoveryBootDiagStorageAccountId)
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
    if self.recoveryContainerId != nil {try container.encode(self.recoveryContainerId, forKey: .recoveryContainerId)}
    if self.vmDisks != nil {try container.encode(self.vmDisks as! [A2AVmDiskInputDetailsData?]?, forKey: .vmDisks)}
    if self.vmManagedDisks != nil {try container.encode(self.vmManagedDisks as! [A2AVmManagedDiskInputDetailsData?]?, forKey: .vmManagedDisks)}
    if self.recoveryResourceGroupId != nil {try container.encode(self.recoveryResourceGroupId, forKey: .recoveryResourceGroupId)}
    if self.recoveryCloudServiceId != nil {try container.encode(self.recoveryCloudServiceId, forKey: .recoveryCloudServiceId)}
    if self.recoveryAvailabilitySetId != nil {try container.encode(self.recoveryAvailabilitySetId, forKey: .recoveryAvailabilitySetId)}
    if self.policyId != nil {try container.encode(self.policyId, forKey: .policyId)}
    if self.recoveryBootDiagStorageAccountId != nil {try container.encode(self.recoveryBootDiagStorageAccountId, forKey: .recoveryBootDiagStorageAccountId)}
  }
}

extension DataFactory {
  public static func createA2ASwitchProtectionInputProtocol() -> A2ASwitchProtectionInputProtocol {
    return A2ASwitchProtectionInputData()
  }
}
