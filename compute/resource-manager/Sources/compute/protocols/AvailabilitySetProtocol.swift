// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AvailabilitySetProtocol is specifies information about the availability set that the virtual machine should be
// assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize
// availability. For more information about availability sets, see [Manage the availability of virtual
// machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-manage-availability?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
// <br><br> For more information on Azure planned maintainance, see [Planned maintenance for virtual machines in
// Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-planned-maintenance?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
// <br><br> Currently, a VM can only be added to availability set at creation time. An existing VM cannot be added to
// an availability set.
public protocol AvailabilitySetProtocol : ResourceProtocol {
     var properties: AvailabilitySetPropertiesProtocol? { get set }
     var sku: SkuProtocol? { get set }
}
