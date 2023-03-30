(declare-const X String)
; ConnectionUser-Agent\x3A\swww\.fast-finder\.com
(assert (not (str.in_re X (re.++ (str.to_re "ConnectionUser-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com\u{a}")))))
; rank\x2Etoolbarbrowser\x2Ecomlnzzlnbk\x2fpkrm\.fin
(assert (str.in_re X (str.to_re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\u{a}")))
; Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in_re X (str.to_re "Subject:AlexaOnline%21%21%21\u{a}"))))
; /^\/blog\/[a-zA-Z0-9]{3}\.(g(3|e)d|mm|vru|be|nut)$/U
(assert (str.in_re X (re.++ (str.to_re "//blog/") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".") (re.union (re.++ (str.to_re "g") (re.union (str.to_re "3") (str.to_re "e")) (str.to_re "d")) (str.to_re "mm") (str.to_re "vru") (str.to_re "be") (str.to_re "nut")) (str.to_re "/U\u{a}"))))
(check-sat)

(exit)
