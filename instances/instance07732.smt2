(declare-const X String)
; User-Agent\x3AUser-Agent\x3AHost\x3ASoftActivityYeah\!
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:Host:SoftActivity\u{13}Yeah!\u{a}"))))
; (\d*)'*-*(\d*)/*(\d*)"
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.* (str.to_re "'")) (re.* (str.to_re "-")) (re.* (re.range "0" "9")) (re.* (str.to_re "/")) (re.* (re.range "0" "9")) (str.to_re "\u{22}\u{a}"))))
(check-sat)
