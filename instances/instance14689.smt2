(declare-const X String)
; /filename=[^\n]*\x2emaplet/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maplet/i\u{a}"))))
; ^\d{4}\/\d{1,2}\/\d{1,2}$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /(\x19\x00|\x00\x5C)\x00n\x00w\x00d\x00b\x00l\x00i\x00b\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{19}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}n\u{0}w\u{0}d\u{0}b\u{0}l\u{0}i\u{0}b\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}"))))
; connection\sHost\x3aSubject\x3A\.bmp
(assert (str.in_re X (re.++ (str.to_re "connection") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Subject:.bmp\u{a}"))))
; ^\d*(\.\d*)$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (str.to_re "\u{a}.") (re.* (re.range "0" "9"))))))
(check-sat)
