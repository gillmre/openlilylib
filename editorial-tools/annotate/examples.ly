% Usage examples for \annotate

% \include "editorial-tools/annotate/definitions.ily"
\include "definitions.ily"

\relative g' {
  % default call with specified grob
  \annotate \with {
    type = "critical remark"
    context = "vc1"
    author = "Urs Liska"
    date = "2013-06-06"
    format = "plain"
    message = "Tenuto added as in Vc. 2"
  }
  Script
  g1-- |
  
  % default call without specified grob (defaults to NoteHead (?))
  \annotate \with {
    type = "question"
    source = "MS2"
    message = "Ms. 2: b flat"
  }
  a4 b 
  
     % postfix call
     c-\annotate \with {
      type = "todo-engraving"
      message = "Improve tie engraving"
    }
    ~ 
    c 
    d ~ d e2-- 
}