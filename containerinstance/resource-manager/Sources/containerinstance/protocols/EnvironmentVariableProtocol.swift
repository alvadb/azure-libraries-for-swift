// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EnvironmentVariableProtocol is the environment variable to set within the container instance.
public protocol EnvironmentVariableProtocol : Codable {
     var name: String { get set }
     var value: String { get set }
}
