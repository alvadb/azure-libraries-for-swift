// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RetentionPolicyParametersProtocol is parameters that define the retention policy for flow log.
public protocol RetentionPolicyParametersProtocol : Codable {
     var days: Int32? { get set }
     var enabled: Bool? { get set }
}