// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServiceBusTopicOutputDataSourcePropertiesProtocol is the properties that are associated with a Service Bus Topic
// output.
public protocol ServiceBusTopicOutputDataSourcePropertiesProtocol : ServiceBusDataSourcePropertiesProtocol {
     var topicName: String? { get set }
     var propertyColumns: [String]? { get set }
}
