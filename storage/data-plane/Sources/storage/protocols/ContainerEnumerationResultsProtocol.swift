// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// ContainerEnumerationResultsProtocol is an enumaration of containers
public protocol ContainerEnumerationResultsProtocol : Codable {
     var serviceEndpoint: String? { get set }
     var prefix: String? { get set }
     var marker: String? { get set }
     var maxResults: Int32? { get set }
     var containers: [ContainerProtocol?]? { get set }
     var nextMarker: String? { get set }
}