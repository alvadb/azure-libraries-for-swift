// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WeekDetailsProtocol is properties of a weekly schedule.
public protocol WeekDetailsProtocol : Codable {
     var weekdays: [String]? { get set }
     var time: String? { get set }
}