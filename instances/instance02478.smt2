(declare-const X String)
; horoscope2Cookie\x3adatATTENTION\x3AKontiki
(assert (str.in_re X (str.to_re "horoscope2Cookie:datATTENTION:Kontiki\u{a}")))
(check-sat)
