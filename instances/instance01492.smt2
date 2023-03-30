(declare-const X String)
; UBAgentwhenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in_re X (str.to_re "UBAgentwhenu.com\u{13}wp-includes/feed.php?\u{a}")))
(check-sat)

(exit)
