// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WorkflowVersionListResultProtocol is the list of workflow versions.
public protocol WorkflowVersionListResultProtocol : Codable {
     var value: [WorkflowVersionProtocol?]? { get set }
     var _nextLink: String? { get set }
}