// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ClusterVersionDetailsProtocol is the detail of the Service Fabric runtime version result
public protocol ClusterVersionDetailsProtocol : Codable {
     var codeVersion: String? { get set }
     var supportExpiryUtc: String? { get set }
     var environment: EnvironmentEnum? { get set }
}