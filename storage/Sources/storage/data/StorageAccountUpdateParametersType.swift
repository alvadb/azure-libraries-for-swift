import Foundation
public struct StorageAccountUpdateParametersType : StorageAccountUpdateParametersTypeProtocol {
    public var sku: SkuTypeProtocol?
    public var tags: [String:String?]?
    public var identity: IdentityTypeProtocol?
    public var properties: StorageAccountPropertiesUpdateParametersTypeProtocol?

    enum CodingKeys: String, CodingKey {
        case sku = "sku"
        case tags = "tags"
        case identity = "identity"
        case properties = "properties"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    if container.contains(.sku) {
        sku = try container.decode(SkuType?.self, forKey: .sku)
    }
    if container.contains(.tags) {
        tags = try container.decode([String:String?]?.self, forKey: .tags)
    }
    if container.contains(.identity) {
        identity = try container.decode(IdentityType?.self, forKey: .identity)
    }
    if container.contains(.properties) {
        properties = try container.decode(StorageAccountPropertiesUpdateParametersType?.self, forKey: .properties)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.sku != nil {try container.encode(sku as! SkuType?, forKey: .sku)}
    if self.tags != nil {try container.encode(tags, forKey: .tags)}
    if self.identity != nil {try container.encode(identity as! IdentityType?, forKey: .identity)}
    if self.properties != nil {try container.encode(properties as! StorageAccountPropertiesUpdateParametersType?, forKey: .properties)}
  }
}
