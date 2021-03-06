// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ScheduleCreateOrUpdateParametersProtocol is the parameters supplied to the create or update schedule operation.
public protocol ScheduleCreateOrUpdateParametersProtocol : Codable {
     var name: String { get set }
     var properties: ScheduleCreateOrUpdatePropertiesProtocol { get set }
}
