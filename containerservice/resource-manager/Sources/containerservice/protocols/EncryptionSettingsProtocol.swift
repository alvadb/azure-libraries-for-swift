// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EncryptionSettingsProtocol is encryption settings for disk or snapshot
public protocol EncryptionSettingsProtocol : Codable {
     var enabled: Bool? { get set }
     var diskEncryptionKey: KeyVaultAndSecretReferenceProtocol? { get set }
     var keyEncryptionKey: KeyVaultAndKeyReferenceProtocol? { get set }
}
