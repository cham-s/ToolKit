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

extension URL {
    /// Check if the path of the URL is a directory or not.
    /// It performs the version check for the platform, whether
    /// hasDirectoryPath
    /// - Returns: true if the the URL is of type directory, false
    /// if not.
    var hasDirectoryforPath: Bool {
        if #available(OSX 10.11, *) {
            return self.hasDirectoryPath
        } else {
            let fm = FileManager.default
            var pathIsDirectory: ObjCBool = false
            fm.fileExists(atPath: self.path, isDirectory: &pathIsDirectory)
            return pathIsDirectory.boolValue
        }
    }
}
