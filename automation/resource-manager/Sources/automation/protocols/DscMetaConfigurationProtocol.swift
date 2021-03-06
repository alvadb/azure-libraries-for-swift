// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DscMetaConfigurationProtocol is definition of the DSC Meta Configuration.
public protocol DscMetaConfigurationProtocol : Codable {
     var configurationModeFrequencyMins: Int32? { get set }
     var rebootNodeIfNeeded: Bool? { get set }
     var configurationMode: String? { get set }
     var actionAfterReboot: String? { get set }
     var certificateId: String? { get set }
     var refreshFrequencyMins: Int32? { get set }
     var allowModuleOverwrite: Bool? { get set }
}
