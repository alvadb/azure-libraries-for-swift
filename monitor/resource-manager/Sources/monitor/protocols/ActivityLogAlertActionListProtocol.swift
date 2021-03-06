// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ActivityLogAlertActionListProtocol is a list of activity log alert actions.
public protocol ActivityLogAlertActionListProtocol : Codable {
     var actionGroups: [ActivityLogAlertActionGroupProtocol?]? { get set }
}
