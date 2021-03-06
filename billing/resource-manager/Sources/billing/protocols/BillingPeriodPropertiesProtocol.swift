// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BillingPeriodPropertiesProtocol is the properties of the billing period.
public protocol BillingPeriodPropertiesProtocol : Codable {
     var billingPeriodStartDate: Date? { get set }
     var billingPeriodEndDate: Date? { get set }
     var invoiceIds: [String]? { get set }
}
