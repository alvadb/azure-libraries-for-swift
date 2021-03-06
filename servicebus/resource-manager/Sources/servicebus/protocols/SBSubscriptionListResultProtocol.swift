// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SBSubscriptionListResultProtocol is the response to the List Subscriptions operation.
public protocol SBSubscriptionListResultProtocol : Codable {
     var value: [SBSubscriptionProtocol?]? { get set }
     var _nextLink: String? { get set }
}
