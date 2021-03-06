// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VerificationIPFlowParametersProtocol is parameters that define the IP flow to be verified.
public protocol VerificationIPFlowParametersProtocol : Codable {
     var targetResourceId: String { get set }
     var direction: DirectionEnum { get set }
     var _protocol: ProtocolEnum { get set }
     var localPort: String { get set }
     var remotePort: String { get set }
     var localIPAddress: String { get set }
     var remoteIPAddress: String { get set }
     var targetNicResourceId: String? { get set }
}
