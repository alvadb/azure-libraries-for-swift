// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UpgradeNotificationProtocol is properties of upgrade notification.
public protocol UpgradeNotificationProtocol : Codable {
     var name: String? { get set }
     var timestamp: Date? { get set }
     var upsellNotification: [String:String]? { get set }
}