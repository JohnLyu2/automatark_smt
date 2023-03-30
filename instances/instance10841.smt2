(declare-const X String)
; User-Agent\x3A\d+Theef2\sHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Theef2") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:\u{a}")))))
; /filename=[\x22\x27]?[^\n]*\x2ewpd[\x22\x27\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wpd") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (str.in_re X (re.++ (str.to_re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.range "0" "9") (str.to_re "BetaWordixqshv/qzccs\u{a}"))))
; <!\[CDATA\[([^\]]*)\]\]>
(assert (str.in_re X (re.++ (str.to_re "<![CDATA[") (re.* (re.comp (str.to_re "]"))) (str.to_re "]]>\u{a}"))))
(check-sat)

(exit)
