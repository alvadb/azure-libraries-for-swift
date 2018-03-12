// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServiceBusBrokeredMessagePropertiesProtocol is
public protocol ServiceBusBrokeredMessagePropertiesProtocol : Codable {
     var contentType: String? { get set }
     var correlationId: String? { get set }
     var forcePersistence: Bool? { get set }
     var label: String? { get set }
     var messageId: String? { get set }
     var partitionKey: String? { get set }
     var replyTo: String? { get set }
     var replyToSessionId: String? { get set }
     var scheduledEnqueueTimeUtc: Date? { get set }
     var sessionId: String? { get set }
     var timeToLive: String? { get set }
     var to: String? { get set }
     var viaPartitionKey: String? { get set }
}