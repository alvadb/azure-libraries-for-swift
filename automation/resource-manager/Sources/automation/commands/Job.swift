// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Job is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Job {
    public static func Create(subscriptionId: String, resourceGroupName: String, automationAccountName: String, jobName: String, parameters: JobCreateParametersProtocol) -> JobCreate {
        return CreateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, jobName: jobName, parameters: parameters)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, automationAccountName: String, jobName: String) -> JobGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, jobName: jobName)
    }
    public static func GetOutput(subscriptionId: String, resourceGroupName: String, automationAccountName: String, jobName: String) -> JobGetOutput {
        return GetOutputCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, jobName: jobName)
    }
    public static func GetRunbookContent(subscriptionId: String, resourceGroupName: String, automationAccountName: String, jobName: String) -> JobGetRunbookContent {
        return GetRunbookContentCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, jobName: jobName)
    }
    public static func ListByAutomationAccount(resourceGroupName: String, automationAccountName: String, subscriptionId: String) -> JobListByAutomationAccount {
        return ListByAutomationAccountCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, subscriptionId: subscriptionId)
    }
    public static func Resume(resourceGroupName: String, automationAccountName: String, jobName: String, subscriptionId: String) -> JobResume {
        return ResumeCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, jobName: jobName, subscriptionId: subscriptionId)
    }
    public static func Stop(resourceGroupName: String, automationAccountName: String, jobName: String, subscriptionId: String) -> JobStop {
        return StopCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, jobName: jobName, subscriptionId: subscriptionId)
    }
    public static func Suspend(subscriptionId: String, resourceGroupName: String, automationAccountName: String, jobName: String) -> JobSuspend {
        return SuspendCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, jobName: jobName)
    }
}
}
