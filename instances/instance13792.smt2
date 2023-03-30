(declare-const X String)
; /filename=[^\n]*\x2ejmh/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jmh/i\u{a}"))))
; ^([0-1]?[0-9]{1}/[0-3]?[0-9]{1}/20[0-9]{2})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "/") (re.opt (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "/20") ((_ re.loop 2 2) (re.range "0" "9")))))
; /\?action=\w+gen&v=\d+/U
(assert (str.in_re X (re.++ (str.to_re "/?action=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gen&v=") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}"))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in_re X (str.to_re "http://www.searchinweb.com/search.php?said=bar\u{a}")))
(check-sat)

(exit)
