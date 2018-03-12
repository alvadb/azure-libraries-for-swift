// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExportJobsOperationResultInfoProtocol is this class is used to send blob details after exporting jobs.
public protocol ExportJobsOperationResultInfoProtocol : OperationResultInfoBaseProtocol {
     var blobUrl: String? { get set }
     var blobSasKey: String? { get set }
}