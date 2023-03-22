(declare-const X String)
; ^([7-9]{1})([0-9]{9})$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "7" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}"))))
; Host\x3AIPAsynchaveAdToolszopabora\x2Einfo
(assert (not (str.in_re X (str.to_re "Host:IPAsynchaveAdToolszopabora.info\u{a}"))))
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to_re "\u{d}\u{a}/Hm\u{a}")))))
(check-sat)
