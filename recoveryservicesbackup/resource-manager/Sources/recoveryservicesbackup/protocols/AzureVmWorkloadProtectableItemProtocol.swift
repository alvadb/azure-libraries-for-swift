// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureVmWorkloadProtectableItemProtocol is azure VM workload-specific protectable item.
public protocol AzureVmWorkloadProtectableItemProtocol : WorkloadProtectableItemProtocol {
     var parentName: String? { get set }
     var parentUniqueName: String? { get set }
     var serverName: String? { get set }
     var isAutoProtectable: Bool? { get set }
     var subinquireditemcount: Int32? { get set }
     var subprotectableitemcount: Int32? { get set }
     var prebackupvalidation: PreBackupValidationProtocol? { get set }
}
