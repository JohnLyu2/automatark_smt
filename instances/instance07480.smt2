(declare-const X String)
; error\*\-\*Wrong\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "error*-*Wrong") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21User-Agent:\u{a}")))))
; ^([1-9]+[0-9]* | [1-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.range "1" "9"))) (str.to_re "\u{a}"))))
; www\x2Erichfind\x2Ecom\d+UI2
(assert (not (str.in_re X (re.++ (str.to_re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to_re "UI2\u{a}")))))
(check-sat)
