<p align="center">
    <a href="LICENSE">
        <img src="https://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://swift.org">
        <img src="https://img.shields.io/badge/swift-4.2-brightgreen.svg" alt="Swift 4.2">
    </a>
    <a href="https://cocoapods.org/pods/Localizer-Plus">
        <img src="https://img.shields.io/cocoapods/v/Localizer.svg" alt="Cocoapod">
    </a>
    <a href="https://discord.gg/q5wCPYv">
        <img src="https://img.shields.io/badge/CLICK_HERE_TO_DISCUSS_THIS_LIB-SWIFT.STREAM-FD6F32.svg" alt="Swift.Stream">
    </a>
</p>

<br>

# Localizer

Install through Swift Package Manager

```swift
.package(url: "https://github.com/MihaelIsaev/Localizer.git", from: "1.0.2")
```

or CocoaPods

```
pod 'Localizer', '~> 1.0.2'
```

# How to use

The most important part is to import it 🚀
```swift
import Localizer
```

### iOS

```swift
// create string relative to current language
let myString = String(
    .en("Hello"),
    .fr("Bonjour"),
    .ru("Привет"),
    .es("Hola"),
    .zh_Hans("你好"),
    .ja("こんにちは"))
print(myString)
```

By default current language is equal to `Locale.current` but you can change it by setting `Localizer.current = .en`.
Also localizer have `default` language in case if user's language doesn't match any in your string, and you could set it just by calling `Localizer.default = .en`.

### Server-side

On server-side we can't detect user's locale through `Locale.current` cause this way we will get server's locale :)

So e.g. if we have `User` model on server which is have `locale` string variable we could use it. For that we should conform `User` to `Localizable` like this

```swift
class User: Localizable {
    // declare this as a link to locale variable in this model
    static var localeKey: LocaleKey? { return \.locale }

    var id: UUID
    var email, password: String

    /// this variable will be used for Localizer to detect language
    /// it should contain e.g. short `en` or long `en_US` value
    var locale: String?
}
```
then declare your localized strings with `user` obejct like this
```swift
let myString = String(for: user,
    .en("Hello"),
    .fr("Bonjour"),
    .ru("Привет"),
    .es("Hola"),
    .zh_Hans("你好"),
    .ja("こんにちは"))
print(myString)
```

Easy, right? :) Would be great if you could give it a star ⭐️
