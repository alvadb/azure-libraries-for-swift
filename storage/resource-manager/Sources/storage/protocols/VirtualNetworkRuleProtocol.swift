// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// VirtualNetworkRuleProtocol is virtual Network rule.
public protocol VirtualNetworkRuleProtocol : Codable {
     var virtualNetworkResourceId: String { get set }
     var action: Action? { get set }
     var state: State? { get set }
}
