// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ParametersValueFileInfoProtocol is a file containing a set of parameter values for an ARM template.
public protocol ParametersValueFileInfoProtocol : Codable {
     var fileName: String? { get set }
     var parametersValueInfo: [String: String?]? { get set }
}