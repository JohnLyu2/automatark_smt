(declare-const X String)
; User-Agent\x3AUser-Agent\x3aURLencoderthis\x7CConnected
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:URLencoderthis|Connected\u{a}")))
(check-sat)
