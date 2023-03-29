(declare-const X String)
; Host\x3A\w+User-Agent\x3A\sTeomaBarHost\x3AHoursHost\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TeomaBarHost:HoursHost:Host:\u{a}")))))
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (not (str.in_re X (re.++ (str.to_re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re ".bin/\u{a}")))))
; DATencentTravelerWebConnLibHost\x3A
(assert (not (str.in_re X (str.to_re "DATencentTravelerWebConnLibHost:\u{a}"))))
; %3fSupremeSoftwareoffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (str.to_re "%3fSupremeSoftwareoffers.bullseye-network.com\u{a}")))
; (\b\w+\b)       # Match a word and capture it
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "       # Match a word and capture it\u{a}")))))
(check-sat)

(exit)
