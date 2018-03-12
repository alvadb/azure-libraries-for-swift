// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EnvironmentPropertiesProtocol is properties of an environment.
public protocol EnvironmentPropertiesProtocol : Codable {
     var deploymentProperties: EnvironmentDeploymentPropertiesProtocol? { get set }
     var armTemplateDisplayName: String? { get set }
     var resourceGroupId: String? { get set }
     var createdByUser: String? { get set }
     var provisioningState: String? { get set }
     var uniqueIdentifier: String? { get set }
}