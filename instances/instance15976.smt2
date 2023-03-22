(declare-const X String)
; ^(\d{5}-\d{4}|\d{5})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$
(assert (str.in_re X (re.union (re.++ (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re " ") (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")))))
; ToolbarUser-Agent\x3Awww\x2Ewebcruiser\x2EccDaemonUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\u{a}"))))
; /filename=[^\n]*\x2esmil/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smil/i\u{a}")))))
; areKeyloggerver=www\x2Esnap\x2Ecom
(assert (str.in_re X (str.to_re "areKeyloggerver=www.snap.com\u{a}")))
(check-sat)
