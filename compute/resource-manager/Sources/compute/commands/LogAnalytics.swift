// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// LogAnalytics is the compute Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct LogAnalytics {
    public static func ExportRequestRateByInterval(location: String, subscriptionId: String, parameters: RequestRateByIntervalInputProtocol) -> LogAnalyticsExportRequestRateByInterval {
        return ExportRequestRateByIntervalCommand(location: location, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func ExportThrottledRequests(location: String, subscriptionId: String, parameters: ThrottledRequestsInputProtocol) -> LogAnalyticsExportThrottledRequests {
        return ExportThrottledRequestsCommand(location: location, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}