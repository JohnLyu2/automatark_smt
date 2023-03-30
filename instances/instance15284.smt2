(declare-const X String)
; ^(/w|/W|[^<>+?$%{}&])+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "/w") (str.to_re "/W") (str.to_re "<") (str.to_re ">") (str.to_re "+") (str.to_re "?") (str.to_re "$") (str.to_re "%") (str.to_re "{") (str.to_re "}") (str.to_re "&"))) (str.to_re "\u{a}")))))
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "HWPE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "LOGsearches.worldtostart.com\u{a}")))))
(check-sat)

(exit)
