(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}"))))
; Host\x3A\w+Host\x3AUser-Agent\x3ATPSystemad\x2Esearchsquire\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:User-Agent:TPSystemad.searchsquire.com\u{a}"))))
(check-sat)

(exit)
