// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProtectedItemProtocol is base class for backup items.
public protocol ProtectedItemProtocol : Codable {
     var backupManagementType: BackupManagementTypeEnum? { get set }
     var workloadType: DataSourceTypeEnum? { get set }
     var containerName: String? { get set }
     var sourceResourceId: String? { get set }
     var policyId: String? { get set }
     var lastRecoveryPoint: Date? { get set }
     var backupSetName: String? { get set }
}
