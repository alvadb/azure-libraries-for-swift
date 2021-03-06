// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BMSBackupEnginesQueryObjectProtocol is query parameters to fetch list of backup engines.
public protocol BMSBackupEnginesQueryObjectProtocol : Codable {
     var backupManagementType: BackupManagementTypeEnum? { get set }
     var friendlyName: String? { get set }
     var expand: String? { get set }
}
