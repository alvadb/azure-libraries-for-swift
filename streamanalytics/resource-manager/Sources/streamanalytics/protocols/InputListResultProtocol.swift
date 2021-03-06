// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InputListResultProtocol is object containing a list of inputs under a streaming job.
public protocol InputListResultProtocol : Codable {
     var value: [InputProtocol?]? { get set }
     var _nextLink: String? { get set }
}
