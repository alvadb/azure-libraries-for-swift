// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationUpdateParametersProtocol is parameters for an update application request.
public protocol ApplicationUpdateParametersProtocol : Codable {
     var allowUpdates: Bool? { get set }
     var defaultVersion: String? { get set }
     var displayName: String? { get set }
}
