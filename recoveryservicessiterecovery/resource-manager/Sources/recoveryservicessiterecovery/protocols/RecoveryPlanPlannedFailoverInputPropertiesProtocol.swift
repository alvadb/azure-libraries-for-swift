// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RecoveryPlanPlannedFailoverInputPropertiesProtocol is recovery plan planned failover input properties.
public protocol RecoveryPlanPlannedFailoverInputPropertiesProtocol : Codable {
     var failoverDirection: PossibleOperationsDirectionsEnum { get set }
     var providerSpecificDetails: [RecoveryPlanProviderSpecificFailoverInputProtocol?]? { get set }
}