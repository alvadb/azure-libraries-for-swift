// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationHealthPolicyProtocol is defines a health policy used to evaluate the health of an application or one of
// its children entities.
public protocol ApplicationHealthPolicyProtocol : Codable {
     var considerWarningAsError: Bool? { get set }
     var maxPercentUnhealthyDeployedApplications: Int32? { get set }
     var defaultServiceTypeHealthPolicy: ServiceTypeHealthPolicyProtocol? { get set }
     var serviceTypeHealthPolicyMap: [ServiceTypeHealthPolicyMapItemProtocol?]? { get set }
}
