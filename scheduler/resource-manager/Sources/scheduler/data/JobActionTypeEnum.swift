// JobActionType enumerates the values for job action type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum JobActionTypeEnum: String, Codable
{
// Http specifies the http state for job action type.
    case Http = "Http"
// Https specifies the https state for job action type.
    case Https = "Https"
// ServiceBusQueue specifies the service bus queue state for job action type.
    case ServiceBusQueue = "ServiceBusQueue"
// ServiceBusTopic specifies the service bus topic state for job action type.
    case ServiceBusTopic = "ServiceBusTopic"
// StorageQueue specifies the storage queue state for job action type.
    case StorageQueue = "StorageQueue"
}