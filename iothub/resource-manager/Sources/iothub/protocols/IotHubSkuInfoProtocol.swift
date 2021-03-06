// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IotHubSkuInfoProtocol is information about the SKU of the IoT hub.
public protocol IotHubSkuInfoProtocol : Codable {
     var name: IotHubSkuEnum { get set }
     var tier: IotHubSkuTierEnum? { get set }
     var capacity: Int64 { get set }
}
