// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PredictionGradesItemProtocol is the definition of a prediction grade.
public protocol PredictionGradesItemProtocol : Codable {
     var gradeName: String? { get set }
     var minScoreThreshold: Int32? { get set }
     var maxScoreThreshold: Int32? { get set }
}