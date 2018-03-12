// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// RouteFilters is the network Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct RouteFilters {
    public static func CreateOrUpdate(resourceGroupName: String, routeFilterName: String, subscriptionId: String, routeFilterParameters: RouteFilterProtocol) -> RouteFiltersCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, routeFilterName: routeFilterName, subscriptionId: subscriptionId, routeFilterParameters: routeFilterParameters)
    }
    public static func Delete(resourceGroupName: String, routeFilterName: String, subscriptionId: String) -> RouteFiltersDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, routeFilterName: routeFilterName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, routeFilterName: String, subscriptionId: String) -> RouteFiltersGet {
        return GetCommand(resourceGroupName: resourceGroupName, routeFilterName: routeFilterName, subscriptionId: subscriptionId)
    }
    public static func List(subscriptionId: String) -> RouteFiltersList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> RouteFiltersListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, routeFilterName: String, subscriptionId: String, routeFilterParameters: PatchRouteFilterProtocol) -> RouteFiltersUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, routeFilterName: routeFilterName, subscriptionId: subscriptionId, routeFilterParameters: routeFilterParameters)
    }
}
}