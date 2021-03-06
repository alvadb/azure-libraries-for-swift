// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RulepropertiesData : RulepropertiesProtocol {
    public var action: ActionProtocol?
    public var filterType: FilterTypeEnum?
    public var sqlFilter: SqlFilterProtocol?
    public var correlationFilter: CorrelationFilterProtocol?

        enum CodingKeys: String, CodingKey {case action = "action"
        case filterType = "filterType"
        case sqlFilter = "sqlFilter"
        case correlationFilter = "correlationFilter"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.action) {
        self.action = try container.decode(ActionData?.self, forKey: .action)
    }
    if container.contains(.filterType) {
        self.filterType = try container.decode(FilterTypeEnum?.self, forKey: .filterType)
    }
    if container.contains(.sqlFilter) {
        self.sqlFilter = try container.decode(SqlFilterData?.self, forKey: .sqlFilter)
    }
    if container.contains(.correlationFilter) {
        self.correlationFilter = try container.decode(CorrelationFilterData?.self, forKey: .correlationFilter)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.action != nil {try container.encode(self.action as! ActionData?, forKey: .action)}
    if self.filterType != nil {try container.encode(self.filterType, forKey: .filterType)}
    if self.sqlFilter != nil {try container.encode(self.sqlFilter as! SqlFilterData?, forKey: .sqlFilter)}
    if self.correlationFilter != nil {try container.encode(self.correlationFilter as! CorrelationFilterData?, forKey: .correlationFilter)}
  }
}

extension DataFactory {
  public static func createRulepropertiesProtocol() -> RulepropertiesProtocol {
    return RulepropertiesData()
  }
}
