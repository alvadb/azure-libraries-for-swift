// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// BackupPolicies is the open API 2.0 Specs for Azure RecoveryServices Backup service
import Foundation
import azureSwiftRuntime
extension Commands {
public struct BackupPolicies {
    public static func List(vaultName: String, resourceGroupName: String, subscriptionId: String) -> BackupPoliciesList {
        return ListCommand(vaultName: vaultName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
}
}
