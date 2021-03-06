// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// WorkspaceCollections is the client to manage your Power BI Embedded workspace collections and retrieve workspaces.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct WorkspaceCollections {
    public static func CheckNameAvailability(subscriptionId: String, location: String, _body: CheckNameRequestProtocol) -> WorkspaceCollectionsCheckNameAvailability {
        return CheckNameAvailabilityCommand(subscriptionId: subscriptionId, location: location, _body: _body)
    }
    public static func Create(subscriptionId: String, resourceGroupName: String, workspaceCollectionName: String, _body: CreateWorkspaceCollectionRequestProtocol) -> WorkspaceCollectionsCreate {
        return CreateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workspaceCollectionName: workspaceCollectionName, _body: _body)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, workspaceCollectionName: String) -> WorkspaceCollectionsDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workspaceCollectionName: workspaceCollectionName)
    }
    public static func GetAccessKeys(subscriptionId: String, resourceGroupName: String, workspaceCollectionName: String) -> WorkspaceCollectionsGetAccessKeys {
        return GetAccessKeysCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workspaceCollectionName: workspaceCollectionName)
    }
    public static func GetByName(subscriptionId: String, resourceGroupName: String, workspaceCollectionName: String) -> WorkspaceCollectionsGetByName {
        return GetByNameCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workspaceCollectionName: workspaceCollectionName)
    }
    public static func ListByResourceGroup(subscriptionId: String, resourceGroupName: String) -> WorkspaceCollectionsListByResourceGroup {
        return ListByResourceGroupCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName)
    }
    public static func ListBySubscription(subscriptionId: String) -> WorkspaceCollectionsListBySubscription {
        return ListBySubscriptionCommand(subscriptionId: subscriptionId)
    }
    public static func Migrate(subscriptionId: String, resourceGroupName: String, _body: MigrateWorkspaceCollectionRequestProtocol) -> WorkspaceCollectionsMigrate {
        return MigrateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, _body: _body)
    }
    public static func RegenerateKey(subscriptionId: String, resourceGroupName: String, workspaceCollectionName: String, _body: WorkspaceCollectionAccessKeyProtocol) -> WorkspaceCollectionsRegenerateKey {
        return RegenerateKeyCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workspaceCollectionName: workspaceCollectionName, _body: _body)
    }
    public static func Update(subscriptionId: String, resourceGroupName: String, workspaceCollectionName: String, _body: UpdateWorkspaceCollectionRequestProtocol) -> WorkspaceCollectionsUpdate {
        return UpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, workspaceCollectionName: workspaceCollectionName, _body: _body)
    }
}
}
