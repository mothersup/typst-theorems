#import "lib.typ": *
#import thm-themes.ams: *

// #show: thm-rules

#set math.equation(block: true, numbering: "(1)")
#show math.equation: it => {
  [custom, #it.block #linebreak()]
  if it.block and not it.has("label") and it.numbering != none [
    #counter(math.equation).update(v => v - 1)
    #math.equation(it.body, block: true, numbering: none)
  ] else {
    it
  }
}

$ 1 + 2 = 3 $

#show: thm-rules

$
  PP(X in A) = EE[bold(1)_A (X)].
$ // no label


#proposition[
  $
    PP(X in B) = EE[bold(1)_B (X)].
  $ <eq:1>
]

@eq:1

#let eq = math.equation($1 + 1 = 2$)
#eq <eq:2>
