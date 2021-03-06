// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SalesforceTableProtocol is salesforce table.
public protocol SalesforceTableProtocol : Codable {
     var isProfile: String? { get set }
     var tableCategory: String { get set }
     var tableName: String { get set }
     var tableRemarks: String? { get set }
     var tableSchema: String { get set }
}
