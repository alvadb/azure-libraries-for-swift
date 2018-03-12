// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Credential is the automation Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Credential {
    public static func CreateOrUpdate(resourceGroupName: String, automationAccountName: String, credentialName: String, subscriptionId: String, parameters: CredentialCreateOrUpdateParametersProtocol) -> CredentialCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, credentialName: credentialName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, automationAccountName: String, credentialName: String, subscriptionId: String) -> CredentialDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, credentialName: credentialName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, automationAccountName: String, credentialName: String, subscriptionId: String) -> CredentialGet {
        return GetCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, credentialName: credentialName, subscriptionId: subscriptionId)
    }
    public static func ListByAutomationAccount(resourceGroupName: String, automationAccountName: String, subscriptionId: String) -> CredentialListByAutomationAccount {
        return ListByAutomationAccountCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, subscriptionId: subscriptionId)
    }
    public static func Update(resourceGroupName: String, automationAccountName: String, credentialName: String, subscriptionId: String, parameters: CredentialUpdateParametersProtocol) -> CredentialUpdate {
        return UpdateCommand(resourceGroupName: resourceGroupName, automationAccountName: automationAccountName, credentialName: credentialName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}