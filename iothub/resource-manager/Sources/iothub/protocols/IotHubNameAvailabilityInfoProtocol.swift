// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IotHubNameAvailabilityInfoProtocol is the properties indicating whether a given IoT hub name is available.
public protocol IotHubNameAvailabilityInfoProtocol : Codable {
     var nameAvailable: Bool? { get set }
     var reason: IotHubNameUnavailabilityReasonEnum? { get set }
     var message: String? { get set }
}
