// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct A2AVmManagedDiskUpdateDetailsData : A2AVmManagedDiskUpdateDetailsProtocol {
    public var diskId: String?
    public var recoveryTargetDiskAccountType: String?
    public var recoveryReplicaDiskAccountType: String?

        enum CodingKeys: String, CodingKey {case diskId = "diskId"
        case recoveryTargetDiskAccountType = "recoveryTargetDiskAccountType"
        case recoveryReplicaDiskAccountType = "recoveryReplicaDiskAccountType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.diskId) {
        self.diskId = try container.decode(String?.self, forKey: .diskId)
    }
    if container.contains(.recoveryTargetDiskAccountType) {
        self.recoveryTargetDiskAccountType = try container.decode(String?.self, forKey: .recoveryTargetDiskAccountType)
    }
    if container.contains(.recoveryReplicaDiskAccountType) {
        self.recoveryReplicaDiskAccountType = try container.decode(String?.self, forKey: .recoveryReplicaDiskAccountType)
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
    if self.diskId != nil {try container.encode(self.diskId, forKey: .diskId)}
    if self.recoveryTargetDiskAccountType != nil {try container.encode(self.recoveryTargetDiskAccountType, forKey: .recoveryTargetDiskAccountType)}
    if self.recoveryReplicaDiskAccountType != nil {try container.encode(self.recoveryReplicaDiskAccountType, forKey: .recoveryReplicaDiskAccountType)}
  }
}

extension DataFactory {
  public static func createA2AVmManagedDiskUpdateDetailsProtocol() -> A2AVmManagedDiskUpdateDetailsProtocol {
    return A2AVmManagedDiskUpdateDetailsData()
  }
}
