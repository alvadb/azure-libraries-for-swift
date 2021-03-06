// UnavailableReason enumerates the values for unavailable reason.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum UnavailableReasonEnum: String, Codable
{
// InvalidName specifies the invalid name state for unavailable reason.
    case InvalidName = "InvalidName"
// NameInLockdown specifies the name in lockdown state for unavailable reason.
    case NameInLockdown = "NameInLockdown"
// NameInUse specifies the name in use state for unavailable reason.
    case NameInUse = "NameInUse"
// None specifies the none state for unavailable reason.
    case None = "None"
// SubscriptionIsDisabled specifies the subscription is disabled state for unavailable reason.
    case SubscriptionIsDisabled = "SubscriptionIsDisabled"
// TooManyNamespaceInCurrentSubscription specifies the too many namespace in current subscription state for unavailable
// reason.
    case TooManyNamespaceInCurrentSubscription = "TooManyNamespaceInCurrentSubscription"
}
