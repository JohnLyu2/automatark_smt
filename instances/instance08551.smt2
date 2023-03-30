(declare-const X String)
; /filename=[^\n]*\x2ehlp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hlp/i\u{a}")))))
; Referer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00User-Agent\x3A\x22The
(assert (not (str.in_re X (str.to_re "Referer:www.ccnnlc.com\u{13}\u{4}\u{0}User-Agent:\u{22}The\u{a}"))))
; HXLogOnly\w+areSubject\x3a\swww\.fast-finder\.comawbeta\.net-nucleus\.com
(assert (not (str.in_re X (re.++ (str.to_re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "areSubject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.comawbeta.net-nucleus.com\u{a}")))))
(check-sat)

(exit)
