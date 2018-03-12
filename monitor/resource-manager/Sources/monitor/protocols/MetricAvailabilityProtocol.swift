// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MetricAvailabilityProtocol is metric availability specifies the time grain (aggregation interval or frequency) and
// the retention period for that time grain.
public protocol MetricAvailabilityProtocol : Codable {
     var timeGrain: String? { get set }
     var retention: String? { get set }
}