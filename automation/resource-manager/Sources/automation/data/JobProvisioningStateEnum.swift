// JobProvisioningState enumerates the values for job provisioning state.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum JobProvisioningStateEnum: String, Codable
{
// JobProvisioningStateFailed specifies the job provisioning state failed state for job provisioning state.
    case JobProvisioningStateFailed = "Failed"
// JobProvisioningStateProcessing specifies the job provisioning state processing state for job provisioning state.
    case JobProvisioningStateProcessing = "Processing"
// JobProvisioningStateSucceeded specifies the job provisioning state succeeded state for job provisioning state.
    case JobProvisioningStateSucceeded = "Succeeded"
// JobProvisioningStateSuspended specifies the job provisioning state suspended state for job provisioning state.
    case JobProvisioningStateSuspended = "Suspended"
}
