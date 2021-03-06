// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// StatusProtocol is the status of an Azure resource at the time the operation was called.
public protocol StatusProtocol : Codable {
     var displayStatus: String? { get set }
     var message: String? { get set }
     var timestamp: Date? { get set }
}
