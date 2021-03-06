// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetManagedDiskParametersData : VirtualMachineScaleSetManagedDiskParametersProtocol {
    public var storageAccountType: StorageAccountTypesEnum?

        enum CodingKeys: String, CodingKey {case storageAccountType = "storageAccountType"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.storageAccountType) {
        self.storageAccountType = try container.decode(StorageAccountTypesEnum?.self, forKey: .storageAccountType)
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
    if self.storageAccountType != nil {try container.encode(self.storageAccountType, forKey: .storageAccountType)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetManagedDiskParametersProtocol() -> VirtualMachineScaleSetManagedDiskParametersProtocol {
    return VirtualMachineScaleSetManagedDiskParametersData()
  }
}
