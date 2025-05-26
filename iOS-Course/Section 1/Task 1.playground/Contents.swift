import Foundation


public func isPalindrome(input: String) -> Bool {
    var cleanedInput = input.folding(options: .diacriticInsensitive, locale: .current)
    cleanedInput = String(cleanedInput.lowercased().unicodeScalars.filter {
        !CharacterSet.punctuationCharacters.contains($0) &&
        !CharacterSet.whitespaces.contains($0) &&
        !CharacterSet.controlCharacters.contains($0)
    })

    return cleanedInput.count > 1 && cleanedInput == String(cleanedInput.reversed())
}
