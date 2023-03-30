(declare-const X String)
; Kontikidownloadfile\x2eorged2kcom\x3EHost\x3AWindows
(assert (not (str.in_re X (str.to_re "Kontikidownloadfile.orged2kcom>Host:Windows\u{a}"))))
; \x22reaction\x2Etxt\x22\d+sErverdist\x2Eatlas\x2Dia\x2EcomUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}reaction.txt\u{22}") (re.+ (re.range "0" "9")) (str.to_re "sErverdist.atlas-ia.comUser-Agent:\u{a}")))))
; ^[0-9]{8}$
(assert (not (str.in_re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^\d+\.\d\.\d[01]\d[0-3]\d\.[1-9]\d*$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to_re ".") (re.range "1" "9") (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
