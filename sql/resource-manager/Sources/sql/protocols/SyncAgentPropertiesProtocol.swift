// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SyncAgentPropertiesProtocol is properties of an Azure SQL Database sync agent.
public protocol SyncAgentPropertiesProtocol : Codable {
     var name: String? { get set }
     var syncDatabaseId: String? { get set }
     var lastAliveTime: Date? { get set }
     var state: SyncAgentStateEnum? { get set }
     var isUpToDate: Bool? { get set }
     var expiryTime: Date? { get set }
     var version: String? { get set }
}
