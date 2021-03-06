// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RouteFilterRulePropertiesFormatProtocol is route Filter Rule Resource
public protocol RouteFilterRulePropertiesFormatProtocol : Codable {
     var access: AccessEnum { get set }
     var routeFilterRuleType: String { get set }
     var communities: [String] { get set }
     var provisioningState: String? { get set }
}
