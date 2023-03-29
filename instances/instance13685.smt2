(declare-const X String)
; /filename=[^\n]*\x2exsl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xsl/i\u{a}"))))
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (str.in_re X (re.++ (str.to_re "/.xfdl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/miU\u{a}"))))
; are\d+X-Mailer\x3a+\d+v=User-Agent\x3a
(assert (not (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (re.+ (re.range "0" "9")) (str.to_re "v=User-Agent:\u{a}")))))
; /setAttributeNS\s*\x28[^,]*,[^,]*requiredFeatures[^,]*,\s*[\x22\x27][\s\r\n]+[\x22\x27]/i
(assert (not (str.in_re X (re.++ (str.to_re "/setAttributeNS") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.comp (str.to_re ","))) (str.to_re ",") (re.* (re.comp (str.to_re ","))) (str.to_re "requiredFeatures") (re.* (re.comp (str.to_re ","))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.+ (re.union (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "/i\u{a}")))))
(check-sat)

(exit)
