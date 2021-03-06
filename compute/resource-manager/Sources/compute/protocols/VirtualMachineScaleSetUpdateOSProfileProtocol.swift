// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VirtualMachineScaleSetUpdateOSProfileProtocol is describes a virtual machine scale set OS profile.
public protocol VirtualMachineScaleSetUpdateOSProfileProtocol : Codable {
     var customData: String? { get set }
     var windowsConfiguration: WindowsConfigurationProtocol? { get set }
     var linuxConfiguration: LinuxConfigurationProtocol? { get set }
     var secrets: [VaultSecretGroupProtocol?]? { get set }
}
