// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResponseWithContinuationServiceRunnerProtocol is the response of a list operation.
public protocol ResponseWithContinuationServiceRunnerProtocol : Codable {
     var value: [ServiceRunnerProtocol?]? { get set }
     var _nextLink: String? { get set }
}
