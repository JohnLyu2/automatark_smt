(declare-const X String)
; error\*\-\*Wrong\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "error*-*Wrong") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21User-Agent:\u{a}"))))
; ^[0-9]{4} {0,1}[A-Z]{2}$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{a}")))))
; (\d{4,6})
(assert (str.in_re X (re.++ ((_ re.loop 4 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
