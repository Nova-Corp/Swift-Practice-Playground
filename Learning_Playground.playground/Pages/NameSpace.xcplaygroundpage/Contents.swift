//: [Previous](@previous)

import UIKit

struct Note {
    let title: String
    let description: String
}

let notes: [Note] = [Note(title: "One", description: "One two three"),
                     Note(title: "Month", description: "Jan feb mar")]

// Before:
let titles = notes.map { $0.title }

// After:
let titlesNew = notes.map(\.title)

func tagLoader(forNoteID noteID: Note.ID) {
    Function(noteManager.loadNote)
        .combined(with: noteID)
        .chained(to: \.tags)
}


struct Function<Input, Output> {
    let raw: (Input) -> Output

    init(_ raw: @escaping (Input) -> Output) {
        self.raw = raw
    }

    func callAsFunction(_ input: Input) -> Output {
        raw(input)
    }
}
