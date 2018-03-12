// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// NetworkInterfaces is the network Client
import Foundation
import azureSwiftRuntime
extension Commands {
public struct NetworkInterfaces {
    public static func CreateOrUpdate(resourceGroupName: String, networkInterfaceName: String, subscriptionId: String, parameters: NetworkInterfaceProtocol) -> NetworkInterfacesCreateOrUpdate {
        return CreateOrUpdateCommand(resourceGroupName: resourceGroupName, networkInterfaceName: networkInterfaceName, subscriptionId: subscriptionId, parameters: parameters)
    }
    public static func Delete(resourceGroupName: String, networkInterfaceName: String, subscriptionId: String) -> NetworkInterfacesDelete {
        return DeleteCommand(resourceGroupName: resourceGroupName, networkInterfaceName: networkInterfaceName, subscriptionId: subscriptionId)
    }
    public static func Get(resourceGroupName: String, networkInterfaceName: String, subscriptionId: String) -> NetworkInterfacesGet {
        return GetCommand(resourceGroupName: resourceGroupName, networkInterfaceName: networkInterfaceName, subscriptionId: subscriptionId)
    }
    public static func GetEffectiveRouteTable(resourceGroupName: String, networkInterfaceName: String, subscriptionId: String) -> NetworkInterfacesGetEffectiveRouteTable {
        return GetEffectiveRouteTableCommand(resourceGroupName: resourceGroupName, networkInterfaceName: networkInterfaceName, subscriptionId: subscriptionId)
    }
    public static func GetVirtualMachineScaleSetIpConfiguration(resourceGroupName: String, virtualMachineScaleSetName: String, virtualmachineIndex: String, networkInterfaceName: String, ipConfigurationName: String, subscriptionId: String) -> NetworkInterfacesGetVirtualMachineScaleSetIpConfiguration {
        return GetVirtualMachineScaleSetIpConfigurationCommand(resourceGroupName: resourceGroupName, virtualMachineScaleSetName: virtualMachineScaleSetName, virtualmachineIndex: virtualmachineIndex, networkInterfaceName: networkInterfaceName, ipConfigurationName: ipConfigurationName, subscriptionId: subscriptionId)
    }
    public static func GetVirtualMachineScaleSetNetworkInterface(resourceGroupName: String, virtualMachineScaleSetName: String, virtualmachineIndex: String, networkInterfaceName: String, subscriptionId: String) -> NetworkInterfacesGetVirtualMachineScaleSetNetworkInterface {
        return GetVirtualMachineScaleSetNetworkInterfaceCommand(resourceGroupName: resourceGroupName, virtualMachineScaleSetName: virtualMachineScaleSetName, virtualmachineIndex: virtualmachineIndex, networkInterfaceName: networkInterfaceName, subscriptionId: subscriptionId)
    }
    public static func List(resourceGroupName: String, subscriptionId: String) -> NetworkInterfacesList {
        return ListCommand(resourceGroupName: resourceGroupName, subscriptionId: subscriptionId)
    }
    public static func ListAll(subscriptionId: String) -> NetworkInterfacesListAll {
        return ListAllCommand(subscriptionId: subscriptionId)
    }
    public static func ListEffectiveNetworkSecurityGroups(resourceGroupName: String, networkInterfaceName: String, subscriptionId: String) -> NetworkInterfacesListEffectiveNetworkSecurityGroups {
        return ListEffectiveNetworkSecurityGroupsCommand(resourceGroupName: resourceGroupName, networkInterfaceName: networkInterfaceName, subscriptionId: subscriptionId)
    }
    public static func ListVirtualMachineScaleSetIpConfigurations(resourceGroupName: String, virtualMachineScaleSetName: String, virtualmachineIndex: String, networkInterfaceName: String, subscriptionId: String) -> NetworkInterfacesListVirtualMachineScaleSetIpConfigurations {
        return ListVirtualMachineScaleSetIpConfigurationsCommand(resourceGroupName: resourceGroupName, virtualMachineScaleSetName: virtualMachineScaleSetName, virtualmachineIndex: virtualmachineIndex, networkInterfaceName: networkInterfaceName, subscriptionId: subscriptionId)
    }
    public static func ListVirtualMachineScaleSetNetworkInterfaces(resourceGroupName: String, virtualMachineScaleSetName: String, subscriptionId: String) -> NetworkInterfacesListVirtualMachineScaleSetNetworkInterfaces {
        return ListVirtualMachineScaleSetNetworkInterfacesCommand(resourceGroupName: resourceGroupName, virtualMachineScaleSetName: virtualMachineScaleSetName, subscriptionId: subscriptionId)
    }
    public static func ListVirtualMachineScaleSetVMNetworkInterfaces(resourceGroupName: String, virtualMachineScaleSetName: String, virtualmachineIndex: String, subscriptionId: String) -> NetworkInterfacesListVirtualMachineScaleSetVMNetworkInterfaces {
        return ListVirtualMachineScaleSetVMNetworkInterfacesCommand(resourceGroupName: resourceGroupName, virtualMachineScaleSetName: virtualMachineScaleSetName, virtualmachineIndex: virtualmachineIndex, subscriptionId: subscriptionId)
    }
    public static func UpdateTags(resourceGroupName: String, networkInterfaceName: String, subscriptionId: String, parameters: TagsObjectProtocol) -> NetworkInterfacesUpdateTags {
        return UpdateTagsCommand(resourceGroupName: resourceGroupName, networkInterfaceName: networkInterfaceName, subscriptionId: subscriptionId, parameters: parameters)
    }
}
}