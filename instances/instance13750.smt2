(declare-const X String)
; /filename=[^\n]*\x2eaddin/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}"))))
; as\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=.*X-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "as.starware.com/dp/search?x=") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}\u{a}")))))
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "Name=Your+Host+is:\u{a}")))))
; Subject\x3A\s+www\x2eproventactics\x2ecomdownloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.proventactics.comdownloads.morpheus.com/rotation\u{a}"))))
(check-sat)

(exit)
