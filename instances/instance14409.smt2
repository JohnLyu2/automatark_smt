(declare-const X String)
; ^([a-zA-Z][a-zA-Z\&\-\.\'\s]*|)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "&") (str.to_re "-") (str.to_re ".") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))))
; /\x2exsl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xsl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\x2erm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\x2ejfif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfif/i\u{a}"))))
; report\<\x2Ftitle\>Referer\x3Aaresflashdownloader\x2EcomHost\x3ADeathpioletLOGtowww\x2Esearchexpert\x2Ecom
(assert (not (str.in_re X (str.to_re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\u{a}"))))
(check-sat)

(exit)
