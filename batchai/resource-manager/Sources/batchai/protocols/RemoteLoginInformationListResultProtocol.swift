// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RemoteLoginInformationListResultProtocol is values returned by the List operation.
public protocol RemoteLoginInformationListResultProtocol : Codable {
     var value: [RemoteLoginInformationProtocol?]? { get set }
     var _nextLink: String? { get set }
}
