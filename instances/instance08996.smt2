(declare-const X String)
; UBAgentwhenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in_re X (str.to_re "UBAgentwhenu.com\u{13}wp-includes/feed.php?\u{a}")))
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}")))
(check-sat)
