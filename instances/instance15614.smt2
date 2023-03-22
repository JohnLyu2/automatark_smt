(declare-const X String)
; asdbiz\x2Ebiz\dATTENTION\x3Aemail
(assert (str.in_re X (re.++ (str.to_re "asdbiz.biz") (re.range "0" "9") (str.to_re "ATTENTION:email\u{a}"))))
; eveocczmthmmq\x2fomzl\d\x2Fasp\x2Foffers\.asp\?
(assert (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to_re "/asp/offers.asp?\u{a}"))))
; /filename=[^\n]*\x2eafm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".afm/i\u{a}")))))
(check-sat)
