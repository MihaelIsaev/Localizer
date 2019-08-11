import Foundation

public protocol Localizable {
    /// Locale Key
    typealias LocaleKey = KeyPath<Self, String?>
    
    /// Locale for the object
    /// If it is nil `default` locale will be taken from `Localizer` shared instance
    static var localeKey: LocaleKey? { get }
}

extension Localizable {
    /// Access the Localizable locale keyed by `localeKey`.
    var locale: String? {
        get {
            guard let localeKey = Self.localeKey else {
                return nil
            }
            return self[keyPath: localeKey]
        }
    }
}
