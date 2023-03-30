(declare-const X String)
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (str.in_re X (re.++ (str.to_re "Reports") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "largePass-Onseqepagqfphv/sfd\u{a}"))))
; /((\d){2})?(\s|-)?((\d){2,4})?(\s|-){1}((\d){8})$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt ((_ re.loop 2 4) (re.range "0" "9"))) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "/\u{a}"))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (str.to_re "http://www.searchinweb.com/search.php?said=bar\u{a}"))))
; ProAgentHost\x3ALOGSeconds\-
(assert (str.in_re X (str.to_re "ProAgentHost:LOGSeconds-\u{a}")))
(check-sat)

(exit)
