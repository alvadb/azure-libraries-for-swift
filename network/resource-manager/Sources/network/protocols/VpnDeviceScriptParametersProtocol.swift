// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VpnDeviceScriptParametersProtocol is vpn device configuration script generation parameters
public protocol VpnDeviceScriptParametersProtocol : Codable {
     var vendor: String? { get set }
     var deviceFamily: String? { get set }
     var firmwareVersion: String? { get set }
}
