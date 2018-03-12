// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MetricDefinitionProtocol is metric definition class specifies the metadata for a metric.
public protocol MetricDefinitionProtocol : Codable {
     var isDimensionRequired: Bool? { get set }
     var resourceId: String? { get set }
     var namespace: String? { get set }
     var name: LocalizableStringProtocol? { get set }
     var unit: UnitEnum? { get set }
     var primaryAggregationType: AggregationTypeEnum? { get set }
     var supportedAggregationTypes: [AggregationTypeEnum?]? { get set }
     var metricAvailabilities: [MetricAvailabilityProtocol?]? { get set }
     var id: String? { get set }
     var dimensions: [LocalizableStringProtocol?]? { get set }
}