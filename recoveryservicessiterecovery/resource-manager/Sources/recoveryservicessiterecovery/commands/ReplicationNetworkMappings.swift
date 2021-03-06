// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ReplicationNetworkMappings is the client for the ReplicationNetworkMappings methods of the
// SiteRecoveryManagementClient service.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ReplicationNetworkMappings {
    public static func Create(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, networkName: String, networkMappingName: String, input: CreateNetworkMappingInputProtocol) -> ReplicationNetworkMappingsCreate {
        return CreateCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, networkName: networkName, networkMappingName: networkMappingName, input: input)
    }
    public static func Delete(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, networkName: String, networkMappingName: String) -> ReplicationNetworkMappingsDelete {
        return DeleteCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, networkName: networkName, networkMappingName: networkMappingName)
    }
    public static func Get(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, networkName: String, networkMappingName: String) -> ReplicationNetworkMappingsGet {
        return GetCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, networkName: networkName, networkMappingName: networkMappingName)
    }
    public static func List(resourceName: String, resourceGroupName: String, subscriptionId: String) -> ReplicationNetworkMappingsList {
        return ListCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListByReplicationNetworks(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, networkName: String) -> ReplicationNetworkMappingsListByReplicationNetworks {
        return ListByReplicationNetworksCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, networkName: networkName)
    }
    public static func Update(resourceName: String, resourceGroupName: String, subscriptionId: String, fabricName: String, networkName: String, networkMappingName: String, input: UpdateNetworkMappingInputProtocol) -> ReplicationNetworkMappingsUpdate {
        return UpdateCommand(resourceName: resourceName, resourceGroupName: resourceGroupName, subscriptionId: subscriptionId, fabricName: fabricName, networkName: networkName, networkMappingName: networkMappingName, input: input)
    }
}
}
