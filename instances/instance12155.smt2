(declare-const X String)
; (\[[Ii][Mm][Gg]\])(\S+?)(\[\/[Ii][Mm][Gg]\])
(assert (not (str.in_re X (re.++ (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}[") (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "G") (str.to_re "g")) (str.to_re "][/") (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "G") (str.to_re "g")) (str.to_re "]")))))
; Host\x3a\dOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "OVNUsertooffers.bullseye-network.com\u{a}"))))
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (str.in_re X (re.++ (str.to_re "/cbn/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:binde2give.com\u{a}"))))
; ^[-\w\s"'=/!@#%&,;:`~\.\$\^\{\[\(\|\)\]\}\*\+\?\\]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "-") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "=") (str.to_re "/") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "%") (str.to_re "&") (str.to_re ",") (str.to_re ";") (str.to_re ":") (str.to_re "`") (str.to_re "~") (str.to_re ".") (str.to_re "$") (str.to_re "^") (str.to_re "{") (str.to_re "[") (str.to_re "(") (str.to_re "|") (str.to_re ")") (str.to_re "]") (str.to_re "}") (str.to_re "*") (str.to_re "+") (str.to_re "?") (str.to_re "\u{5c}") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
