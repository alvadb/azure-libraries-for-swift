// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// CheckNameAvailabilityResultProtocol is the CheckNameAvailability operation response.
public protocol CheckNameAvailabilityResultProtocol : Codable {
     var nameAvailable: Bool? { get set }
     var reason: Reason? { get set }
     var message: String? { get set }
}