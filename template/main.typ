// #import "@preview/arkheion:0.1.0": arkheion, arkheion-appendices
#import "template/template.typ": arkheion, arkheion-appendices

// additional format settings
#show link: underline
#set cite(style: "ieee")
#set math.mat(delim: "[")

// title page
#show: arkheion.with(
  title: "Note Template",
  authors: (
    (name: "Ruixiang Du", email: "ruixiang.du@gmail.com", affiliation: ""),
  ),
  // abstrct: "your-content" or none
  abstract: none,
  // keywords: ("First keyword", "Second keyword", "etc."),
  date: "May 11, 2024",
)

#outline(
  title: auto,
  depth: 2,
  indent: auto
)

#pagebreak()

//------------------------------------------------------------------------//

= Heading: first level
#lorem(20)

#pagebreak()

== Heading: second level
#lorem(20)

=== Heading: third level

==== Paragraph
#lorem(20)

#lorem(20)

= Math

*Inline:* Let $a$, $b$, and $c$ be the side
lengths of right-angled triangle. Then, we know that: $a^2 + b^2 = c^2$

*Block without numbering:*

#math.equation(block: true, numbering: none, [
    $
    sum_(k=1)^n k = (n(n+1)) / 2
    $
  ]
)

*Block with numbering:*

As shown in @equation.

$
sum_(k=1)^n k = (n(n+1)) / 2
$ <equation>

*More information:*
- #link("https://typst.app/docs/reference/math/equation/")


= Citation

You can use citations by using the `#cite` function with the key for the reference and adding a bibliography. Typst supports BibLateX and Hayagriva.

```typst
#bibliography("bibliography.bib")
```

Single citation @Vaswani2017AttentionIA. Multiple citations @Vaswani2017AttentionIA @hinton2015distilling. In text #cite(<Vaswani2017AttentionIA>, form: "prose")

*More information:*
- #link("https://typst.app/docs/reference/meta/bibliography/")
- #link("https://typst.app/docs/reference/meta/cite/")

= Figures and Tables


#figure(
  table(
    align: center,
    columns: (auto, auto),
    row-gutter: (2pt, auto),
    stroke: 0.5pt,
    inset: 5pt,
    [header 1], [header 2],
    [cell 1], [cell 2],
    [cell 3], [cell 4],
  ),
  caption: [#lorem(5)]
) <table>

#figure(
  image("figure/image.png", width: 30%),
  caption: [#lorem(7)]
) <figure>

*More information*

- #link("https://typst.app/docs/reference/meta/figure/")
- #link("https://typst.app/docs/reference/layout/table/")

= Referencing

@figure #lorem(10), @table.

*More information:*

- #link("https://typst.app/docs/reference/meta/ref/")

= Lists

*Unordered list*

- #lorem(10)
- #lorem(8)

*Numbered list*

+ #lorem(10)
+ #lorem(8)
+ #lorem(12)

*More information:*
- #link("https://typst.app/docs/reference/layout/enum/")
- #link("https://typst.app/docs/reference/meta/cite/")


// Add bibliography and create Bibiliography section
#bibliography("bibliography.bib")

// // Create appendix section
// #show: arkheion-appendices
// = 

// == Appendix section

// #lorem(100)

