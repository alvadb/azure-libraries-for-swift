// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// LocationCapabilitiesProtocol is the capabilities for a location.
public protocol LocationCapabilitiesProtocol : Codable {
     var name: String? { get set }
     var status: CapabilityStatusEnum? { get set }
     var supportedServerVersions: [ServerVersionCapabilityProtocol?]? { get set }
}
