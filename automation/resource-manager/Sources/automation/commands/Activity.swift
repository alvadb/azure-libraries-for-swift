// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Activity is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Activity {
    public static func Get(resourceGroupName: String, automationAccountName: String, moduleName: String, activityName: String, subscriptionId: String) -> ActivityGet {
        return GetCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, moduleName: moduleName, activityName: activityName, subscriptionId: subscriptionId)
    }
    public static func ListByModule(resourceGroupName: String, automationAccountName: String, moduleName: String, subscriptionId: String) -> ActivityListByModule {
        return ListByModuleCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, moduleName: moduleName, subscriptionId: subscriptionId)
    }
}
}