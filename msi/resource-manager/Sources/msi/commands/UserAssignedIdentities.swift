// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// UserAssignedIdentities is the the Managed Service Identity Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct UserAssignedIdentities {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, resourceName: String, parameters: IdentityProtocol) -> UserAssignedIdentitiesCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, parameters: parameters)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, resourceName: String) -> UserAssignedIdentitiesDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, resourceName: String) -> UserAssignedIdentitiesGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName)
    }
    public static func ListByResourceGroup(subscriptionId: String, resourceGroupName: String) -> UserAssignedIdentitiesListByResourceGroup {
        return ListByResourceGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
    public static func ListBySubscription(subscriptionId: String) -> UserAssignedIdentitiesListBySubscription {
        return ListBySubscriptionCommand(subscriptionId: subscriptionId)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, resourceName: String, parameters: IdentityProtocol) -> UserAssignedIdentitiesUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, resourceName: resourceName, parameters: parameters)
    }
}
}
