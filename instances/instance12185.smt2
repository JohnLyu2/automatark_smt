(declare-const X String)
; /\x2eurl([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.url") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ZC-Bridge\s+www\x2Ewebcruiser\x2Ecc\x22StealthReferer\x3AContact
(assert (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webcruiser.cc\u{22}StealthReferer:Contact\u{a}"))))
; /(^|&)destination_ip=[^&]*?(\x60|\x24\x28|%60|%24%28)/Pmi
(assert (str.in_re X (re.++ (str.to_re "/&destination_ip=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "`") (str.to_re "$(") (str.to_re "%60") (str.to_re "%24%28")) (str.to_re "/Pmi\u{a}"))))
; /filename=[^\n]*\x2edcr/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dcr/i\u{a}")))))
; /z\x3D[A-Z0-9%]{700}/i
(assert (not (str.in_re X (re.++ (str.to_re "/z=") ((_ re.loop 700 700) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "%"))) (str.to_re "/i\u{a}")))))
(check-sat)

(exit)
