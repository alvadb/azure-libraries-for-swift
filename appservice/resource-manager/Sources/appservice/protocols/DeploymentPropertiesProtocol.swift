// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DeploymentPropertiesProtocol is deployment resource specific properties
public protocol DeploymentPropertiesProtocol : Codable {
     var id: String? { get set }
     var status: Int32? { get set }
     var message: String? { get set }
     var author: String? { get set }
     var deployer: String? { get set }
     var authorEmail: String? { get set }
     var startTime: Date? { get set }
     var endTime: Date? { get set }
     var active: Bool? { get set }
     var details: String? { get set }
}