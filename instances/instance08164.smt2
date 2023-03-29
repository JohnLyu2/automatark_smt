(declare-const X String)
; /filename=[^\n]*\x2epfm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pfm/i\u{a}")))))
; ^([34|37]{2})([0-9]{13})$
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "3") (str.to_re "4") (str.to_re "|") (str.to_re "7"))) ((_ re.loop 13 13) (re.range "0" "9")) (str.to_re "\u{a}")))))
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (not (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}Computeron:com>2.41\u{a}")))))
(check-sat)

(exit)
