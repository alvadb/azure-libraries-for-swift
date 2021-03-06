// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExportResourceUsageParametersProtocol is the parameters of the export operation.
public protocol ExportResourceUsageParametersProtocol : Codable {
     var blobStorageAbsoluteSasUri: String? { get set }
     var usageStartDate: Date? { get set }
}
