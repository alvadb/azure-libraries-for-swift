// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// InquiryValidationProtocol is validation for inquired protectable items under a given container.
public protocol InquiryValidationProtocol : Codable {
     var status: String? { get set }
     var errorDetail: ErrorDetailProtocol? { get set }
}
