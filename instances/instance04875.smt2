(declare-const X String)
; LOGGuardedHost\x3Awww\x2Esearchreslt\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in_re X (str.to_re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\u{a}")))
(check-sat)
