// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Formulas is the the DevTest Labs Client.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Formulas {
    public static func CreateOrUpdate(subscriptionId: String, resourceGroupName: String, labName: String, name: String, formula: FormulaProtocol) -> FormulasCreateOrUpdate {
        return CreateOrUpdateCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name, formula: formula)
    }
    public static func Delete(subscriptionId: String, resourceGroupName: String, labName: String, name: String) -> FormulasDelete {
        return DeleteCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name)
    }
    public static func Get(subscriptionId: String, resourceGroupName: String, labName: String, name: String) -> FormulasGet {
        return GetCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName, name: name)
    }
    public static func List(subscriptionId: String, resourceGroupName: String, labName: String) -> FormulasList {
        return ListCommand(subscriptionId: subscriptionId, resourceGroupName: resourceGroupName, labName: labName)
    }
}
}
