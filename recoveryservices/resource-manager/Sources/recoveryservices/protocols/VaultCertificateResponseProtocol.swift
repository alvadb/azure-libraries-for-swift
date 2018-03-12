// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VaultCertificateResponseProtocol is certificate corresponding to a vault that can be used by clients to register
// themselves with the vault.
public protocol VaultCertificateResponseProtocol : Codable {
     var name: String? { get set }
     var type: String? { get set }
     var id: String? { get set }
     var properties: ResourceCertificateDetailsProtocol? { get set }
}