// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// PercentileSourceTarget is the azure Cosmos DB Database Service Resource Provider REST API
import Foundation
import azureSwiftRuntime
extension Commands {
public struct PercentileSourceTarget {
    public static func ListMetrics(subscriptionId: String, resourceGroupName: String, accountName: String, sourceRegion: String, targetRegion: String, filter: String) -> PercentileSourceTargetListMetrics {
        return ListMetricsCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, accountName: accountName, sourceRegion: sourceRegion, targetRegion: targetRegion, filter: filter)
    }
}
}