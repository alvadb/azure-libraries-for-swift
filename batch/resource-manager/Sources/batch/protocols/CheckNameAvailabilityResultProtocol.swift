// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CheckNameAvailabilityResultProtocol is the CheckNameAvailability operation response.
public protocol CheckNameAvailabilityResultProtocol : Codable {
     var nameAvailable: Bool? { get set }
     var reason: NameAvailabilityReasonEnum? { get set }
     var message: String? { get set }
}
