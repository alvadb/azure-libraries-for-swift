// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Webhooks is the client for the Webhooks methods of the ContainerRegistryManagementClient service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Webhooks {
    public static func Create(subscriptionId: String, resourceGroupName: String, registryName: String, webhookName: String, webhookCreateParameters: WebhookCreateParametersProtocol) -> WebhooksCreate {
        return CreateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, registryName: registryName, webhookName: webhookName, webhookCreateParameters: webhookCreateParameters)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, registryName: String, webhookName: String) -> WebhooksDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, registryName: registryName, webhookName: webhookName)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, registryName: String, webhookName: String) -> WebhooksGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, registryName: registryName, webhookName: webhookName)
    }
    public static func GetCallbackConfig(subscriptionId: String, resourceGroupName: String, registryName: String, webhookName: String) -> WebhooksGetCallbackConfig {
        return GetCallbackConfigCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, registryName: registryName, webhookName: webhookName)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, registryName: String) -> WebhooksList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, registryName: registryName)
    }
    public static func ListEvents(subscriptionId: String, resourceGroupName: String, registryName: String, webhookName: String) -> WebhooksListEvents {
        return ListEventsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, registryName: registryName, webhookName: webhookName)
    }
    public static func Ping(subscriptionId: String, resourceGroupName: String, registryName: String, webhookName: String) -> WebhooksPing {
        return PingCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, registryName: registryName, webhookName: webhookName)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, registryName: String, webhookName: String, webhookUpdateParameters: WebhookUpdateParametersProtocol) -> WebhooksUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, registryName: registryName, webhookName: webhookName, webhookUpdateParameters: webhookUpdateParameters)
    }
}
}