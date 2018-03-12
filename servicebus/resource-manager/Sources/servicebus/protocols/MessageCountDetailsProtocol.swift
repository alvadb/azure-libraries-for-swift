// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MessageCountDetailsProtocol is message Count Details.
public protocol MessageCountDetailsProtocol : Codable {
     var activeMessageCount: Int64? { get set }
     var deadLetterMessageCount: Int64? { get set }
     var scheduledMessageCount: Int64? { get set }
     var transferMessageCount: Int64? { get set }
     var transferDeadLetterMessageCount: Int64? { get set }
}