// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ManagementEventAggregationConditionProtocol is how the data that is collected should be combined over time.
public protocol ManagementEventAggregationConditionProtocol : Codable {
     var _operator: ConditionOperatorEnum? { get set }
     var threshold: Double? { get set }
     var windowSize: String? { get set }
}
