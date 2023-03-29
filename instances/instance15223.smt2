(declare-const X String)
; IP\s+\.hta.*Theef2trustyfiles\x2Ecomlogs
(assert (str.in_re X (re.++ (str.to_re "IP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".hta") (re.* re.allchar) (str.to_re "Theef2trustyfiles.comlogs\u{a}"))))
; (^\d{5}\x2D\d{3}$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9"))))))
; ^(([A-Za-z]+[^0-9]*)([0-9]+[^\W]*)([\W]+[\W0-9A-Za-z]*))|(([A-Za-z]+[^\W]*)([\W]+[^0-9]*)([0-9]+[\W0-9A-Za-z]*))|(([\W]+[^A-Za-z]*)([A-Za-z]+[^0-9]*)([0-9]+[\W0-9A-Za-z]*))|(([\W]+[^0-9]*)([0-9]+[^A-Za-z]*)([A-Za-z]+[\W0-9A-Za-z]*))|(([0-9]+[^A-Za-z]*)([A-Za-z]+[^\W]*)([\W]+[\W0-9A-Za-z]*))|(([0-9]+[^\W]*)([\W]+[^A-Za-z]*)([A-Za-z]+[\W0-9A-Za-z]*))$
(assert (str.in_re X (re.union (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (str.to_re "\u{a}") (re.+ (re.range "0" "9")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))))))
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Desktop") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "IDENTIFY666User-Agent:[Static\u{a}"))))
(check-sat)

(exit)
