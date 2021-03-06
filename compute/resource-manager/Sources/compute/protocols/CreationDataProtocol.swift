// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CreationDataProtocol is data used when creating a disk.
public protocol CreationDataProtocol : Codable {
     var createOption: DiskCreateOptionEnum { get set }
     var storageAccountId: String? { get set }
     var imageReference: ImageDiskReferenceProtocol? { get set }
     var sourceUri: String? { get set }
     var sourceResourceId: String? { get set }
}
