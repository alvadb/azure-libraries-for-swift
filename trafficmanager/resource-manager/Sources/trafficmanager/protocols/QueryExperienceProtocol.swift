// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// QueryExperienceProtocol is class representing a Traffic Manager HeatMap query experience properties.
public protocol QueryExperienceProtocol : Codable {
     var endpointId: Int32 { get set }
     var queryCount: Int32 { get set }
     var latency: Double? { get set }
}