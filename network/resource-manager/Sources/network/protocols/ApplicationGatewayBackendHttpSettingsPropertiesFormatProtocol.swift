// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationGatewayBackendHttpSettingsPropertiesFormatProtocol is properties of Backend address pool settings of an
// application gateway.
public protocol ApplicationGatewayBackendHttpSettingsPropertiesFormatProtocol : Codable {
     var port: Int32? { get set }
     var _protocol: ApplicationGatewayProtocolEnum? { get set }
     var cookieBasedAffinity: ApplicationGatewayCookieBasedAffinityEnum? { get set }
     var requestTimeout: Int32? { get set }
     var probe: SubResourceProtocol? { get set }
     var authenticationCertificates: [SubResourceProtocol?]? { get set }
     var connectionDraining: ApplicationGatewayConnectionDrainingProtocol? { get set }
     var hostName: String? { get set }
     var pickHostNameFromBackendAddress: Bool? { get set }
     var affinityCookieName: String? { get set }
     var probeEnabled: Bool? { get set }
     var path: String? { get set }
     var provisioningState: String? { get set }
}
