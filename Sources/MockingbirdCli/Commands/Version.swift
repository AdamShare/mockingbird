import ArgumentParser
import Foundation
import MockingbirdCommon
import MockingbirdGenerator
@preconcurrency import PathKit

extension Mockingbird {
  struct Version: ParsableCommand, Sendable {
    static let configuration = CommandConfiguration(
      abstract: "Show the version.",
      shouldDisplay: false
    )
    
    func run() throws {
      logInfo("\(mockingbirdVersion)")
    }
  }
}
