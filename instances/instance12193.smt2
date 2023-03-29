(declare-const X String)
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (str.in_re X (re.++ (str.to_re "TCP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.comHost:Subject:\u{a}"))))
; /filename=[^\n]*\x2elzh/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lzh/i\u{a}")))))
; EFError\swww\x2emalware-stopper\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}")))))
; (^(6011)\d{12}$)|(^(65)\d{14}$)
(assert (str.in_re X (re.union (re.++ (str.to_re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}65") ((_ re.loop 14 14) (re.range "0" "9"))))))
(check-sat)

(exit)
