// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UserAccountSettingsProtocol is settings for user account that gets created on each on the nodes of a cluster.
public protocol UserAccountSettingsProtocol : Codable {
     var adminUserName: String { get set }
     var adminUserSshPublicKey: String? { get set }
     var adminUserPassword: String? { get set }
}