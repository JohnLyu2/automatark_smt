(declare-const X String)
; Subject\x3a\d+rprpgbnrppb\x2fci
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci\u{a}"))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in_re X (str.to_re "shprrprt-cs-\u{13}Pre/ta/NEWS/\u{a}")))
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:origin=sidefind\u{a}"))))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (str.in_re X (re.++ (str.to_re "Cookie:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ldap://\u{a}"))))
; spas\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=
(assert (not (str.in_re X (re.++ (str.to_re "spas") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=\u{a}")))))
(check-sat)

(exit)
