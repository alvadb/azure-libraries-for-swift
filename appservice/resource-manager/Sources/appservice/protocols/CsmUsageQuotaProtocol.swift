// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CsmUsageQuotaProtocol is usage of the quota resource.
public protocol CsmUsageQuotaProtocol : Codable {
     var unit: String? { get set }
     var nextResetTime: Date? { get set }
     var currentValue: Int64? { get set }
     var limit: Int64? { get set }
     var name: LocalizableStringProtocol? { get set }
}
