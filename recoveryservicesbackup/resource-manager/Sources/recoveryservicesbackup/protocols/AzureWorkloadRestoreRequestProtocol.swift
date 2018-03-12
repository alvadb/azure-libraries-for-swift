// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AzureWorkloadRestoreRequestProtocol is azureWorkload-specific restore.
public protocol AzureWorkloadRestoreRequestProtocol : RestoreRequestProtocol {
     var recoveryType: RecoveryTypeEnum? { get set }
     var sourceResourceId: String? { get set }
     var propertyBag: [String:String]? { get set }
}