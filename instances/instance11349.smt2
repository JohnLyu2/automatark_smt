(declare-const X String)
; e2give\.com.*Login\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Login") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}####User-Agent:\u{a}")))))
; 3Awww\x2eurlblaze\x2enetulmxct\x2fmqoycEFErrorHost\x3Ae2give\.com
(assert (not (str.in_re X (str.to_re "3Awww.urlblaze.netulmxct/mqoycEFErrorHost:e2give.com\u{a}"))))
; \b[^aeiou]+[aeiou][^aeiou]+\b
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "a") (str.to_re "e") (str.to_re "i") (str.to_re "o") (str.to_re "u"))) (re.union (str.to_re "a") (str.to_re "e") (str.to_re "i") (str.to_re "o") (str.to_re "u")) (re.+ (re.union (str.to_re "a") (str.to_re "e") (str.to_re "i") (str.to_re "o") (str.to_re "u"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
