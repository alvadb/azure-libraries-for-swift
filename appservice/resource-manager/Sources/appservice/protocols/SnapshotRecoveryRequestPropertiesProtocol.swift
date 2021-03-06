// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SnapshotRecoveryRequestPropertiesProtocol is snapshotRecoveryRequest resource specific properties
public protocol SnapshotRecoveryRequestPropertiesProtocol : Codable {
     var snapshotTime: String? { get set }
     var recoveryTarget: SnapshotRecoveryTargetProtocol? { get set }
     var overwrite: Bool? { get set }
     var recoverConfiguration: Bool? { get set }
     var ignoreConflictingHostNames: Bool? { get set }
}
