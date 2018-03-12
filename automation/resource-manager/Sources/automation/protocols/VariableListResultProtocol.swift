// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VariableListResultProtocol is the response model for the list variables operation.
public protocol VariableListResultProtocol : Codable {
     var value: [VariableProtocol?]? { get set }
     var _nextLink: String? { get set }
}