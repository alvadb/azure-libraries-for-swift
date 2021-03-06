// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetVMProfileProtocol is describes a virtual machine scale set virtual machine profile.
public protocol VirtualMachineScaleSetVMProfileProtocol : Codable {
     var osProfile: VirtualMachineScaleSetOSProfileProtocol? { get set }
     var storageProfile: VirtualMachineScaleSetStorageProfileProtocol? { get set }
     var networkProfile: VirtualMachineScaleSetNetworkProfileProtocol? { get set }
     var diagnosticsProfile: DiagnosticsProfileProtocol? { get set }
     var extensionProfile: VirtualMachineScaleSetExtensionProfileProtocol? { get set }
     var licenseType: String? { get set }
     var priority: VirtualMachinePriorityTypesEnum? { get set }
}
