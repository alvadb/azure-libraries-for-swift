import Foundation
public struct DimensionType : DimensionTypeProtocol {
    public var name: String?
    public var displayName: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case displayName = "displayName"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.name) {
        name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.displayName) {
        displayName = try container.decode(String?.self, forKey: .displayName)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.name != nil {try container.encode(name, forKey: .name)}
    if self.displayName != nil {try container.encode(displayName, forKey: .displayName)}
  }
}
