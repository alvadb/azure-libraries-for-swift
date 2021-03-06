// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ProtectionPolicies is the open API 2.0 Specs for Azure RecoveryServices Backup service
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ProtectionPolicies {
    public static func CreateOrUpdate(vaultName: String, resourceGroupName: String, subscriptionId: String, policyName: String, parameters: ProtectionPolicyResourceProtocol) -> ProtectionPoliciesCreateOrUpdate {
        return CreateOrUpdateCommand(vaultName: vaultName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, policyName: policyName, parameters: parameters)
    }
    public static func Delete(vaultName: String, resourceGroupName: String, subscriptionId: String, policyName: String) -> ProtectionPoliciesDelete {
        return DeleteCommand(vaultName: vaultName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, policyName: policyName)
    }
    public static func Get(vaultName: String, resourceGroupName: String, subscriptionId: String, policyName: String) -> ProtectionPoliciesGet {
        return GetCommand(vaultName: vaultName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, policyName: policyName)
    }
}
}
