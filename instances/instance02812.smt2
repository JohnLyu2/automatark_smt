(declare-const X String)
; url=http\x3AGamespyjspIDENTIFYserverHOST\x3ASubject\x3A
(assert (str.in_re X (str.to_re "url=http:\u{1b}GamespyjspIDENTIFYserverHOST:Subject:\u{a}")))
(check-sat)

(exit)
