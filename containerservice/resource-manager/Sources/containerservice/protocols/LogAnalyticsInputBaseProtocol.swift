// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// LogAnalyticsInputBaseProtocol is api input base class for LogAnalytics Api.
public protocol LogAnalyticsInputBaseProtocol : Codable {
     var blobContainerSasUri: String { get set }
     var fromTime: Date { get set }
     var toTime: Date { get set }
     var groupByThrottlePolicy: Bool? { get set }
     var groupByOperationName: Bool? { get set }
     var groupByResourceName: Bool? { get set }
}
