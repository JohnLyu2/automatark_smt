(declare-const X String)
; DesktopBladeclient=wwwHello\x2Exmlns\x3A
(assert (str.in_re X (str.to_re "DesktopBladeclient=wwwHello.xmlns:\u{a}")))
(check-sat)

(exit)
