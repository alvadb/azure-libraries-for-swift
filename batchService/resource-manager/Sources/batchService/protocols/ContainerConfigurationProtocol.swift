// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ContainerConfigurationProtocol is
public protocol ContainerConfigurationProtocol : Codable {
     var type: String { get set }
     var containerImageNames: [String]? { get set }
     var containerRegistries: [ContainerRegistryProtocol?]? { get set }
}
