(declare-const X String)
; /\x2ehta([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.hta") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; www\.thecommunicator\.net\d+http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to_re "http://tv.seekmo.com/showme.aspx?keyword=\u{a}")))))
; ^UA-\d+-\d+$
(assert (not (str.in_re X (re.++ (str.to_re "UA-") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; Stablecmemailyxegtd\x2fefcwgUin=PromulGate
(assert (not (str.in_re X (str.to_re "Stablecmemailyxegtd/efcwgUin=PromulGate\u{a}"))))
(check-sat)
