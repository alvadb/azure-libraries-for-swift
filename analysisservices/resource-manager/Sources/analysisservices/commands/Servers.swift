// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Servers is the the Azure Analysis Services Web API provides a RESTful set of web services that enables users to
// create, retrieve, update, and delete Analysis Services servers
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Servers {
    public static func CheckNameAvailability(location: String, subscriptionId: String, serverParameters: CheckServerNameAvailabilityParametersProtocol) -> ServersCheckNameAvailability {
        return CheckNameAvailabilityCommand(location: location, subscriptionId: subscriptionId, serverParameters: serverParameters)
    }
    public static func Create(resourceGroupName: String, serverName: String, subscriptionId: String, serverParameters: AnalysisServicesServerProtocol) -> ServersCreate {
        return CreateCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId, serverParameters: serverParameters)
    }
    public static func Delete(resourceGroupName: String, serverName: String, subscriptionId: String) -> ServersDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId)
    }
    public static func DissociateGateway(resourceGroupName: String, serverName: String, subscriptionId: String) -> ServersDissociateGateway {
        return DissociateGatewayCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId)
    }
    public static func GetDetails(resourceGroupName: String, serverName: String, subscriptionId: String) -> ServersGetDetails {
        return GetDetailsCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId)
    }
    public static func List(subscriptionId: String) -> ServersList {
        return ListCommand(subscriptionId: subscriptionId)
    }
    public static func ListByResourceGroup(resourceGroupName: String, subscriptionId: String) -> ServersListByResourceGroup {
        return ListByResourceGroupCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListGatewayStatus(resourceGroupName: String, serverName: String, subscriptionId: String) -> ServersListGatewayStatus {
        return ListGatewayStatusCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId)
    }
    public static func ListOperationResults(location: String, operationId: String, subscriptionId: String) -> ServersListOperationResults {
        return ListOperationResultsCommand(location: location, operationId: operationId, subscriptionId: subscriptionId)
    }
    public static func ListOperationStatuses(location: String, operationId: String, subscriptionId: String) -> ServersListOperationStatuses {
        return ListOperationStatusesCommand(location: location, operationId: operationId, subscriptionId: subscriptionId)
    }
    public static func ListSkusForExisting(resourceGroupName: String, serverName: String, subscriptionId: String) -> ServersListSkusForExisting {
        return ListSkusForExistingCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId)
    }
    public static func ListSkusForNew(subscriptionId: String) -> ServersListSkusForNew {
        return ListSkusForNewCommand(subscriptionId: subscriptionId)
    }
    public static func Resume(resourceGroupName: String, serverName: String, subscriptionId: String) -> ServersResume {
        return ResumeCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId)
    }
    public static func Suspend(resourceGroupName: String, serverName: String, subscriptionId: String) -> ServersSuspend {
        return SuspendCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, serverName: String, subscriptionId: String, serverUpdateParameters: AnalysisServicesServerUpdateParametersProtocol) -> ServersUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, serverName: serverName, subscriptionId: subscriptionId, serverUpdateParameters: serverUpdateParameters)
    }
}
}