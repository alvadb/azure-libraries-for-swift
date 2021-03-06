// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ValidateResponseProtocol is describes the result of resource validation.
public protocol ValidateResponseProtocol : Codable {
     var status: String? { get set }
     var error: ValidateResponseErrorProtocol? { get set }
}
