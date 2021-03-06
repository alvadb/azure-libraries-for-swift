// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// LoadBalancerLoadBalancingRuleListResultProtocol is response for ListLoadBalancingRule API service call.
public protocol LoadBalancerLoadBalancingRuleListResultProtocol : Codable {
     var value: [LoadBalancingRuleProtocol?]? { get set }
     var _nextLink: String? { get set }
}
