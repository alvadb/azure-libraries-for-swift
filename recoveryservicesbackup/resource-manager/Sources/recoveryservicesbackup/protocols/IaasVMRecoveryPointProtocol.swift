// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IaasVMRecoveryPointProtocol is iaaS VM workload specific backup copy.
public protocol IaasVMRecoveryPointProtocol : RecoveryPointProtocol {
     var recoveryPointType: String? { get set }
     var recoveryPointTime: Date? { get set }
     var recoveryPointAdditionalInfo: String? { get set }
     var sourceVMStorageType: String? { get set }
     var isSourceVMEncrypted: Bool? { get set }
     var keyAndSecret: KeyAndSecretDetailsProtocol? { get set }
     var isInstantIlrSessionActive: Bool? { get set }
     var recoveryPointTierDetails: [RecoveryPointTierInformationProtocol?]? { get set }
     var isManagedVirtualMachine: Bool? { get set }
     var virtualMachineSize: String? { get set }
     var originalStorageAccountOption: Bool? { get set }
}
