// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// BatchAccount is the client for the BatchAccount methods of the BatchManagementClient service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct BatchAccount {
    public static func Create(resourceGroupName: String, accountName: String, subscriptionId: String, parameters: BatchAccountCreateParametersProtocol) -> BatchAccountCreate {
        return CreateCommand(resourceGroupName: resourceGroupName, accountName: accountName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, accountName: String, subscriptionId: String) -> BatchAccountDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, accountName: accountName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, accountName: String, subscriptionId: String) -> BatchAccountGet {
        return GetCommand(resourceGroupName: resourceGroupName, accountName: accountName, subscriptionId: subscriptionId)
    }
    public static func GetKeys(resourceGroupName: String, accountName: String, subscriptionId: String) -> BatchAccountGetKeys {
        return GetKeysCommand(resourceGroupName: resourceGroupName, accountName: accountName, subscriptionId: subscriptionId)
    }
    public static func List(subscriptionId: String) -> BatchAccountList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> BatchAccountListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func RegenerateKey(resourceGroupName: String, accountName: String, subscriptionId: String, parameters: BatchAccountRegenerateKeyParametersProtocol) -> BatchAccountRegenerateKey {
        return RegenerateKeyCommand(resourceGroupName: resourceGroupName, accountName: accountName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func SynchronizeAutoStorageKeys(resourceGroupName: String, accountName: String, subscriptionId: String) -> BatchAccountSynchronizeAutoStorageKeys {
        return SynchronizeAutoStorageKeysCommand(resourceGroupName: resourceGroupName, accountName: accountName, subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, accountName: String, subscriptionId: String, parameters: BatchAccountUpdateParametersProtocol) -> BatchAccountUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, accountName: accountName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}