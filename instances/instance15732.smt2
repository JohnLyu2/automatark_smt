(declare-const X String)
; /filename=[^\n]*\x2ehhk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hhk/i\u{a}")))))
; ^(([1-9]{1}[0-9]{0,5}([.]{1}[0-9]{0,2})?)|(([0]{1}))([.]{1}[0-9]{0,2})?)$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to_re "0")) (re.opt (re.++ ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 0 2) (re.range "0" "9")))))) (str.to_re "\u{a}"))))
; /mmpool[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (not (str.in_re X (re.++ (str.to_re "/mmpool") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}")))))
(check-sat)

(exit)
