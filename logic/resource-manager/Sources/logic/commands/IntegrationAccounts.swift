// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// IntegrationAccounts is the REST API for Azure Logic Apps.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct IntegrationAccounts {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, integrationAccount: IntegrationAccountProtocol) -> IntegrationAccountsCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, integrationAccount: integrationAccount)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, integrationAccountName: String) -> IntegrationAccountsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, integrationAccountName: String) -> IntegrationAccountsGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName)
    }
    public static func GetCallbackUrl(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, parameters: GetCallbackUrlParametersProtocol) -> IntegrationAccountsGetCallbackUrl {
        return GetCallbackUrlCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, parameters: parameters)
    }
    public static func ListByResourceGroup(subscriptionId: String, resourceGroupName: String) -> IntegrationAccountsListByResourceGroup {
        return ListByResourceGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
    public static func ListBySubscription(subscriptionId: String) -> IntegrationAccountsListBySubscription {
        return ListBySubscriptionCommand(subscriptionId: subscriptionId)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, integrationAccountName: String, integrationAccount: IntegrationAccountProtocol) -> IntegrationAccountsUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, integrationAccountName: integrationAccountName, integrationAccount: integrationAccount)
    }
}
}