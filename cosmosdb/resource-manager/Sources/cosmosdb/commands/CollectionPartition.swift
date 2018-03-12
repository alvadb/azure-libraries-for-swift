// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// CollectionPartition is the azure Cosmos DB Database Service Resource Provider REST API
import Foundation
import azureSwiftRuntime
extension Commands {
public struct CollectionPartition {
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, accountName: String, databaseRid: String, collectionRid: String, filter: String) -> CollectionPartitionListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, databaseRid: databaseRid, collectionRid: collectionRid, filter: filter)
    }
    public static func ListUsages(subscriptionId: String, resourceGroupName: String, accountName: String, databaseRid: String, collectionRid: String) -> CollectionPartitionListUsages {
        return ListUsagesCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, databaseRid: databaseRid, collectionRid: collectionRid)
    }
}
}