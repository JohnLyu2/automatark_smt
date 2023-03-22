(declare-const X String)
; /filename=[^\n]*\x2emp4/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mp4/i\u{a}"))))
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "SbAts") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.com\u{a}")))))
; IP\d+SAHPORT-User-Agent\x3AUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:User-Agent:\u{a}"))))
; report\<\x2Ftitle\>Referer\x3Aaresflashdownloader\x2EcomHost\x3ADeathpioletLOGtowww\x2Esearchexpert\x2Ecom
(assert (not (str.in_re X (str.to_re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\u{a}"))))
; [\x01-\x08,\x0A-\x1F,\x7F,\x81,\x8D,\x8F,\x90,\x9D]
(assert (str.in_re X (re.++ (re.union (re.range "\u{1}" "\u{8}") (str.to_re ",") (re.range "\u{a}" "\u{1f}") (str.to_re "\u{7f}") (str.to_re "\u{81}") (str.to_re "\u{8d}") (str.to_re "\u{8f}") (str.to_re "\u{90}") (str.to_re "\u{9d}")) (str.to_re "\u{a}"))))
(check-sat)
