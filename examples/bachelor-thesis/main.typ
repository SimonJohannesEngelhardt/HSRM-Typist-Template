// Import dependencies such as glossaries etc.
#import "dependencies.typ": *
#import "../../lib/translations.typ": translations

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#import "../../lib/lib.typ": bachelor-thesis
#show: bachelor-thesis.with(
  language: "de",

  title-de: "Antwort auf die endgültige Frage nach dem Leben, dem Universum und dem ganzen Rest",
  keywords-de: ("Leben", "Universum", "Alles"),
  abstract-de: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae,
felis. Curabitur dictum gravida mauris. Nam arcu lib
ero, nonummy eget, consectetuer id, vulputate a, magna.",

  title-en: "Answer to the Ultimate Question of Life, the Universe, and Everything",
  keywords-en:  ("Live", "Universe", "Everything"),
  abstract-en: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae,
felis. Curabitur dictum gravida mauris. Nam arcu lib
ero, nonummy eget, consectetuer id, vulputate a, magna.",

  author: "The Computer",
  faculty: "Design Informatik Medien",
  study-course: "Angewandte Informatik",
  supervisors: ("Prof. Dr. Example", "Prof. Dr. Example"),
  external-supervisor: ("Herr Example"),
  submission-date: datetime(year: 1948, month: 12, day: 10),
  include-declaration-of-independent-processing: true,
)

// Enable glossary
// Use: @key or @key:pl to reference
// More documentation: https://typst.app/universe/package/glossy
#import "abbreviations.typ": abbreviations-entry-list
#import "glossary.typ": glossary-entry-list
#show: init-glossary.with(abbreviations-entry-list)
#show: init-glossary.with(glossary-entry-list)

// Print abbreviations
#pagebreak(weak: true)
#{
  set heading(numbering: none)
  glossary(title: "Abbreviations", groups: "Abbreviations")
}

// Include chapters of report
#pagebreak(weak: true)
#include "chapters/01_preamble.typ"
#include "chapters/02_articles.typ"

// Print glossary
#pagebreak(weak: true)
#{
  set heading(numbering: none)
  glossary(title: translations.glossary, groups: "")
}

// Print bibliography
#pagebreak(weak: true)
#bibliography("bibliography.bib", style: "../../lib/assets/ieeetran.csl", title: translations.bibliography)
