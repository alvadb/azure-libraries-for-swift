// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ScheduleCreateOrUpdatePropertiesProtocol is the parameters supplied to the create or update schedule operation.
public protocol ScheduleCreateOrUpdatePropertiesProtocol : Codable {
     var description: String? { get set }
     var startTime: Date { get set }
     var expiryTime: Date? { get set }
     var interval: [String: String?]? { get set }
     var frequency: ScheduleFrequencyEnum { get set }
     var timeZone: String? { get set }
     var advancedSchedule: AdvancedScheduleProtocol? { get set }
}