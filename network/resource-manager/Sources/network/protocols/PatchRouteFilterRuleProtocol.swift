// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PatchRouteFilterRuleProtocol is route Filter Rule Resource
public protocol PatchRouteFilterRuleProtocol : SubResourceProtocol {
     var properties: RouteFilterRulePropertiesFormatProtocol? { get set }
     var name: String? { get set }
     var etag: String? { get set }
}