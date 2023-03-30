(declare-const X String)
; Ts2\x2FUser-Agent\x3Aactualnames\.comGURLwww\x2Ealtnet\x2Ecom
(assert (not (str.in_re X (str.to_re "Ts2/User-Agent:actualnames.comGURLwww.altnet.com\u{1b}\u{a}"))))
; /filename=[^\n]*\x2ehhk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hhk/i\u{a}")))))
; ^100(\.0{0,2})? *%?$|^\d{1,2}(\.\d{1,2})? *%?$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "100") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (str.to_re "0")))) (re.* (str.to_re " ")) (re.opt (str.to_re "%"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to_re " ")) (re.opt (str.to_re "%")) (str.to_re "\u{a}"))))))
(check-sat)

(exit)
