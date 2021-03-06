// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SiteExtensionInfoPropertiesData : SiteExtensionInfoPropertiesProtocol {
    public var id: String?
    public var title: String?
    public var type: SiteExtensionTypeEnum?
    public var summary: String?
    public var description: String?
    public var version: String?
    public var extensionUrl: String?
    public var projectUrl: String?
    public var iconUrl: String?
    public var licenseUrl: String?
    public var feedUrl: String?
    public var authors: [String]?
    public var installationArgs: String?
    public var publishedDateTime: Date?
    public var downloadCount: Int32?
    public var localIsLatestVersion: Bool?
    public var localPath: String?
    public var installedDateTime: Date?
    public var provisioningState: String?
    public var comment: String?

        enum CodingKeys: String, CodingKey {case id = "id"
        case title = "title"
        case type = "type"
        case summary = "summary"
        case description = "description"
        case version = "version"
        case extensionUrl = "extensionUrl"
        case projectUrl = "projectUrl"
        case iconUrl = "iconUrl"
        case licenseUrl = "licenseUrl"
        case feedUrl = "feedUrl"
        case authors = "authors"
        case installationArgs = "installationArgs"
        case publishedDateTime = "publishedDateTime"
        case downloadCount = "downloadCount"
        case localIsLatestVersion = "localIsLatestVersion"
        case localPath = "localPath"
        case installedDateTime = "installedDateTime"
        case provisioningState = "provisioningState"
        case comment = "comment"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.title) {
        self.title = try container.decode(String?.self, forKey: .title)
    }
    if container.contains(.type) {
        self.type = try container.decode(SiteExtensionTypeEnum?.self, forKey: .type)
    }
    if container.contains(.summary) {
        self.summary = try container.decode(String?.self, forKey: .summary)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.version) {
        self.version = try container.decode(String?.self, forKey: .version)
    }
    if container.contains(.extensionUrl) {
        self.extensionUrl = try container.decode(String?.self, forKey: .extensionUrl)
    }
    if container.contains(.projectUrl) {
        self.projectUrl = try container.decode(String?.self, forKey: .projectUrl)
    }
    if container.contains(.iconUrl) {
        self.iconUrl = try container.decode(String?.self, forKey: .iconUrl)
    }
    if container.contains(.licenseUrl) {
        self.licenseUrl = try container.decode(String?.self, forKey: .licenseUrl)
    }
    if container.contains(.feedUrl) {
        self.feedUrl = try container.decode(String?.self, forKey: .feedUrl)
    }
    if container.contains(.authors) {
        self.authors = try container.decode([String]?.self, forKey: .authors)
    }
    if container.contains(.installationArgs) {
        self.installationArgs = try container.decode(String?.self, forKey: .installationArgs)
    }
    if container.contains(.publishedDateTime) {
        self.publishedDateTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .publishedDateTime)), format: .dateTime)
    }
    if container.contains(.downloadCount) {
        self.downloadCount = try container.decode(Int32?.self, forKey: .downloadCount)
    }
    if container.contains(.localIsLatestVersion) {
        self.localIsLatestVersion = try container.decode(Bool?.self, forKey: .localIsLatestVersion)
    }
    if container.contains(.localPath) {
        self.localPath = try container.decode(String?.self, forKey: .localPath)
    }
    if container.contains(.installedDateTime) {
        self.installedDateTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .installedDateTime)), format: .dateTime)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.comment) {
        self.comment = try container.decode(String?.self, forKey: .comment)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.title != nil {try container.encode(self.title, forKey: .title)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.summary != nil {try container.encode(self.summary, forKey: .summary)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.version != nil {try container.encode(self.version, forKey: .version)}
    if self.extensionUrl != nil {try container.encode(self.extensionUrl, forKey: .extensionUrl)}
    if self.projectUrl != nil {try container.encode(self.projectUrl, forKey: .projectUrl)}
    if self.iconUrl != nil {try container.encode(self.iconUrl, forKey: .iconUrl)}
    if self.licenseUrl != nil {try container.encode(self.licenseUrl, forKey: .licenseUrl)}
    if self.feedUrl != nil {try container.encode(self.feedUrl, forKey: .feedUrl)}
    if self.authors != nil {try container.encode(self.authors as! [String]?, forKey: .authors)}
    if self.installationArgs != nil {try container.encode(self.installationArgs, forKey: .installationArgs)}
    if self.publishedDateTime != nil {
        try container.encode(DateConverter.toString(date: self.publishedDateTime!, format: .dateTime), forKey: .publishedDateTime)
    }
    if self.downloadCount != nil {try container.encode(self.downloadCount, forKey: .downloadCount)}
    if self.localIsLatestVersion != nil {try container.encode(self.localIsLatestVersion, forKey: .localIsLatestVersion)}
    if self.localPath != nil {try container.encode(self.localPath, forKey: .localPath)}
    if self.installedDateTime != nil {
        try container.encode(DateConverter.toString(date: self.installedDateTime!, format: .dateTime), forKey: .installedDateTime)
    }
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.comment != nil {try container.encode(self.comment, forKey: .comment)}
  }
}

extension DataFactory {
  public static func createSiteExtensionInfoPropertiesProtocol() -> SiteExtensionInfoPropertiesProtocol {
    return SiteExtensionInfoPropertiesData()
  }
}
