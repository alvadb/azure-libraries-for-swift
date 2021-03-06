// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OutputFileUploadOptionsData : OutputFileUploadOptionsProtocol {
    public var uploadCondition: OutputFileUploadConditionEnum

        enum CodingKeys: String, CodingKey {case uploadCondition = "uploadCondition"
        }

  public init(uploadCondition: OutputFileUploadConditionEnum)  {
    self.uploadCondition = uploadCondition
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.uploadCondition = try container.decode(OutputFileUploadConditionEnum.self, forKey: .uploadCondition)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.uploadCondition, forKey: .uploadCondition)
  }
}

extension DataFactory {
  public static func createOutputFileUploadOptionsProtocol(uploadCondition: OutputFileUploadConditionEnum) -> OutputFileUploadOptionsProtocol {
    return OutputFileUploadOptionsData(uploadCondition: uploadCondition)
  }
}
