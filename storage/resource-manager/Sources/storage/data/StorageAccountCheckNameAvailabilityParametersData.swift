// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
internal struct StorageAccountCheckNameAvailabilityParametersData : StorageAccountCheckNameAvailabilityParametersProtocol {
    public var name: String
    public var type: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case type = "type"
    }

  public init(name: String, type: String)  {
    self.name = name
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    name = try container.decode(String.self, forKey: .name)
    type = try container.decode(String.self, forKey: .type)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(name, forKey: .name)
    try container.encode(type, forKey: .type)
  }
}

extension DataFactory {
  public static func createStorageAccountCheckNameAvailabilityParametersProtocol(name: String, type: String) -> StorageAccountCheckNameAvailabilityParametersProtocol {
    return StorageAccountCheckNameAvailabilityParametersData(name: name, type: type)
  }
}