// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ImagePropertiesProtocol is describes the properties of an Image.
public protocol ImagePropertiesProtocol : Codable {
     var sourceVirtualMachine: SubResourceProtocol? { get set }
     var storageProfile: ImageStorageProfileProtocol? { get set }
     var provisioningState: String? { get set }
}
