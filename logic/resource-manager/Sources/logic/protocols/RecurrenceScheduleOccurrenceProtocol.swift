// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecurrenceScheduleOccurrenceProtocol is the recurrence schedule occurence.
public protocol RecurrenceScheduleOccurrenceProtocol : Codable {
     var day: DayOfWeekEnum? { get set }
     var occurrence: Int32? { get set }
}