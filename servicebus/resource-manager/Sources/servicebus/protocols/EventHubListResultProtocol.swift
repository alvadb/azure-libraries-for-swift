// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EventHubListResultProtocol is the result of the List EventHubs operation.
public protocol EventHubListResultProtocol : Codable {
     var value: [EventhubProtocol?]? { get set }
     var _nextLink: String? { get set }
}
