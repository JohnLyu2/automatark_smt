(declare-const X String)
; /^\x2frouji.txt$/mU
(assert (not (str.in_re X (re.++ (str.to_re "//rouji") re.allchar (str.to_re "txt/mU\u{a}")))))
(check-sat)

(exit)
