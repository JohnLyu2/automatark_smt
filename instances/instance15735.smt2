(declare-const X String)
; xpsp2-\s+spyblpatHost\x3Ais\x2EphpBarFrom\x3A
(assert (not (str.in_re X (re.++ (str.to_re "xpsp2-") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblpatHost:is.phpBarFrom:\u{a}")))))
; LOGLiveHost\x3ALOGHandyhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (str.to_re "LOGLiveHost:LOGHandyhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
; ([0-9]{6}|[0-9]{3}\s[0-9]{3})
(assert (str.in_re X (re.++ (re.union ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
