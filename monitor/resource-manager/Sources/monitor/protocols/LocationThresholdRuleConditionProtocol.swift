// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// LocationThresholdRuleConditionProtocol is a rule condition based on a certain number of locations failing.
public protocol LocationThresholdRuleConditionProtocol : RuleConditionProtocol {
     var windowSize: String? { get set }
     var failedLocationCount: Int32 { get set }
}