(declare-const X String)
; error\*\-\*Wrong\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "error*-*Wrong") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21User-Agent:\u{a}")))))
; Monitor\s+SupervisorPalUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Monitor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SupervisorPalUser-Agent:\u{a}"))))
; (\[b\])([^\[\]]+)(\[/b\])
(assert (str.in_re X (re.++ (str.to_re "[b]") (re.+ (re.union (str.to_re "[") (str.to_re "]"))) (str.to_re "[/b]\u{a}"))))
(check-sat)
