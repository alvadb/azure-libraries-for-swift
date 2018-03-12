// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationUpgradePolicyProtocol is describes the policy for a monitored application upgrade.
public protocol ApplicationUpgradePolicyProtocol : Codable {
     var upgradeReplicaSetCheckTimeout: Int64? { get set }
     var forceRestart: Bool? { get set }
     var rollingUpgradeMonitoringPolicy: RollingUpgradeMonitoringPolicyProtocol? { get set }
     var applicationHealthPolicy: ApplicationHealthPolicyProtocol? { get set }
}