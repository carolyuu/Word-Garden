// Ch. 3.6 Working with Strings

import PlaygroundSupport


var myName = "Gallaugher"
var smallerString = "laugh"

// contains
if myName.contains(smallerString) {
    print("\(myName) contains \(smallerString)")
} else {
    print("there is no \(smallerString) in \(myName)")
}

// hasPrefix + hasSuffix

var occupation = "Swift Developer"
var searchString = "Swift"

print("\nPREFIX SEARCH")

if occupation.hasPrefix(searchString) {
    print("You're Hired!")
} else {
    print("No job for you")
}

print("\nSUFFIX SEARCH")
occupation = "ios Developer"
searchString = "Developer"

if occupation.hasSuffix(searchString) {
    print ("You're Hired! We need more \(occupation)s")
} else {
    print("No job for you. No one needs any \(occupation)s.")
}


// .removeLast()
print("\nREMOVE")
var bandName = "The White Stripes"
let lastChar = bandName.removeLast()
print ("After we remove \(lastChar) the band is just \(bandName).")

// .removeFirst(k: Int)
print ("\nREMOVE FIRST #")
var person = "Dr. Nick"
let title = "Dr."
person.removeFirst(title.count + 1)
print(person)

// .replacingOccurances(of: with:)
print("\nREPLACING OCCURANCES OF")

// 123 James St.
// 123 James St
// 123 James Street

var address = "123 James St."
var streetString = "St."
var replacementString = "Street"

var standardAddress = address.replacingOccurrences(of: streetString, with: replacementString)
print (standardAddress, address)

// what would you do it we had 123 St. James St.?

// Iterate Trhough a String
print("\nBACKWARDS STRING")

var name = "Gallaugher"
var backwardsName = ""
for letter in name {
    backwardsName = String(letter) + backwardsName
}
print("\(name), \(backwardsName)")

// capitalization
print("\nPLAYING WITH CAPS")
var crazyCaps = "SwIFt DeVELoPEr"
var uppercased = crazyCaps.uppercased()
var lowercased = crazyCaps.lowercased()
var capitalized = crazyCaps.capitalized

print(uppercased, lowercased, capitalized)
print(crazyCaps)


var wordToGuess = "SWIFT"
var revealedWord = "_"

for _ in 1...wordToGuess.count - 1 {
    revealedWord = revealedWord + " _"
}
// revealedWord.removeLast()
print("\(wordToGuess) will show as '\(revealedWord)'")

// Create a String from a repeating vlaue
var repeatingRevealedWord = "_" + String(repeating: " _", count: wordToGuess.count-1)
print("using repearing string: '\(revealedWord)'")
 

// REVEAL THE WORD
print("\nREVEAL THE WORD")

wordToGuess = "SWIFT"
var letterGuessed = "SQFTX"
revealedWord = ""

// loop through all letters in wordToGuess
for letter in wordToGuess {
    // Check if letter in wordToGuess is in lettersGuessed (ie. did you guess this letter already?)
    if lettersGuessed.contains(letter) {
        //if so, add an underscore + a blank space, to revealedWord
        revealedWord = revealedWord + "\(letter) "
    } else {
        // if not, add an underscore + a blank space, to revealedWord
        revealedWord = revealedWord + "_ "
    }
}
//remove the extra space at the end of revealedWord
revealedWord.removeLast()

print("wordToGuess = \(wordToGuess)")
print("letterGuessed = \(letterGuessed)")
print("revealedWord \(revealedWord)")


