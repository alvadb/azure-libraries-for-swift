// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AutoScaleSettingsProtocol is the system automatically scales the cluster up and down (within minimumNodeCount and
// maximumNodeCount) based on the pending and running jobs on the cluster.
public protocol AutoScaleSettingsProtocol : Codable {
     var minimumNodeCount: Int32 { get set }
     var maximumNodeCount: Int32 { get set }
     var initialNodeCount: Int32? { get set }
}