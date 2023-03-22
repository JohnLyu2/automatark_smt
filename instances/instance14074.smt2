(declare-const X String)
; Supreme\d+Host\x3A\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (str.in_re X (re.++ (str.to_re "Supreme") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}"))))
; LOGGuardedHost\x3Awww\x2Esearchreslt\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in_re X (str.to_re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\u{a}")))
(check-sat)
