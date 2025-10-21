import ArgumentParser
import Foundation
@preconcurrency import PathKit
import MockingbirdGenerator

struct SwiftFilePath: ExpressibleByArgument, Sendable {
  var path: Path
  var defaultValueDescription: String { path.abbreviate().string }
    nonisolated(unsafe) static var defaultCompletionKind: CompletionKind = .file(extensions: ["swift"])
  
  init?(argument: String) {
    self.path = Path(argument)
  }
}

extension SwiftFilePath: Encodable {
  func encode(to encoder: Encoder) throws {
    try OptionArgumentEncoding.encode(path, with: encoder)
  }
}
