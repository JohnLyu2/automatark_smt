(declare-const X String)
; ^(\d|,)*\.?\d*$
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ejpeg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpeg/i\u{a}"))))
; ^([A-Z]{1,2}[0-9]{1,2}|[A-Z]{3}|[A-Z]{1,2}[0-9][A-Z])( |-)[0-9][A-Z]{2}
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "0" "9") (re.range "A" "Z"))) (re.union (str.to_re " ") (str.to_re "-")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{a}"))))
; /(\x19\x00|\x00\x5C)\x00s\x00p\x00f\x00r\x00a\x00m\x00e\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{19}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}s\u{0}p\u{0}f\u{0}r\u{0}a\u{0}m\u{0}e\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}")))))
(check-sat)
