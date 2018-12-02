import Foundation

extension FileManager {
    /// Provides the document directory of the
    /// current user
    /// - Returns: The URL of the document directory
    var documentDirectoryForCurrentUser: URL {
        return FileManager.default.urls(for: .documentDirectory,
                                        in: .userDomainMask).first!
    }
}
