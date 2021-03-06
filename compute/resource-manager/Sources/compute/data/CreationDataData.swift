// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CreationDataData : CreationDataProtocol {
    public var createOption: DiskCreateOptionEnum
    public var storageAccountId: String?
    public var imageReference: ImageDiskReferenceProtocol?
    public var sourceUri: String?
    public var sourceResourceId: String?

        enum CodingKeys: String, CodingKey {case createOption = "createOption"
        case storageAccountId = "storageAccountId"
        case imageReference = "imageReference"
        case sourceUri = "sourceUri"
        case sourceResourceId = "sourceResourceId"
        }

  public init(createOption: DiskCreateOptionEnum)  {
    self.createOption = createOption
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.createOption = try container.decode(DiskCreateOptionEnum.self, forKey: .createOption)
    if container.contains(.storageAccountId) {
        self.storageAccountId = try container.decode(String?.self, forKey: .storageAccountId)
    }
    if container.contains(.imageReference) {
        self.imageReference = try container.decode(ImageDiskReferenceData?.self, forKey: .imageReference)
    }
    if container.contains(.sourceUri) {
        self.sourceUri = try container.decode(String?.self, forKey: .sourceUri)
    }
    if container.contains(.sourceResourceId) {
        self.sourceResourceId = try container.decode(String?.self, forKey: .sourceResourceId)
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
    try container.encode(self.createOption, forKey: .createOption)
    if self.storageAccountId != nil {try container.encode(self.storageAccountId, forKey: .storageAccountId)}
    if self.imageReference != nil {try container.encode(self.imageReference as! ImageDiskReferenceData?, forKey: .imageReference)}
    if self.sourceUri != nil {try container.encode(self.sourceUri, forKey: .sourceUri)}
    if self.sourceResourceId != nil {try container.encode(self.sourceResourceId, forKey: .sourceResourceId)}
  }
}

extension DataFactory {
  public static func createCreationDataProtocol(createOption: DiskCreateOptionEnum) -> CreationDataProtocol {
    return CreationDataData(createOption: createOption)
  }
}
