// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DscReportResourceProtocol is definition of the DSC Report Resource.
public protocol DscReportResourceProtocol : Codable {
     var resourceId: String? { get set }
     var sourceInfo: String? { get set }
     var dependsOn: [DscReportResourceNavigationProtocol?]? { get set }
     var moduleName: String? { get set }
     var moduleVersion: String? { get set }
     var resourceName: String? { get set }
     var error: String? { get set }
     var status: String? { get set }
     var durationInSeconds: Double? { get set }
     var startDate: Date? { get set }
}
