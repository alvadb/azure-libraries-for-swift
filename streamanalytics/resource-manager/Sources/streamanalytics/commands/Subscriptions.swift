// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// Subscriptions is the stream Analytics Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct Subscriptions {
    public static func ListQuotas(location: String, subscriptionId: String) -> SubscriptionsListQuotas {
        return ListQuotasCommand(location: location, subscriptionId: subscriptionId)
    }
}
}
