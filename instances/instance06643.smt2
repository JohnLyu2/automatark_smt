(declare-const X String)
; ^(0)$|^([1-9][0-9]*)$
(assert (not (str.in_re X (re.union (str.to_re "0") (re.++ (str.to_re "\u{a}") (re.range "1" "9") (re.* (re.range "0" "9")))))))
; /\x2Fmrow\x5Fpin\x2F\x3Fid\d+[a-z]{5,}\d{5}\x26rnd\x3D\d+/smi
(assert (str.in_re X (re.++ (str.to_re "//mrow_pin/?id") (re.+ (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "&rnd=") (re.+ (re.range "0" "9")) (str.to_re "/smi\u{a}") ((_ re.loop 5 5) (re.range "a" "z")) (re.* (re.range "a" "z")))))
; /User-Agent\x3a\sMSIE.*\x3b\sNT.*\x3b\sAV.*\x3b\sOV.*\x3b\sNA.*VR\x28PH5.0\sW20130912/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "MSIE") (re.* re.allchar) (str.to_re ";") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "NT") (re.* re.allchar) (str.to_re ";") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "AV") (re.* re.allchar) (str.to_re ";") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "OV") (re.* re.allchar) (str.to_re ";") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "NA") (re.* re.allchar) (str.to_re "VR(PH5") re.allchar (str.to_re "0") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "W20130912/H\u{a}"))))
; ^((25[0-4]|(2[0-4]|1[0-9]|[1-9]?)[0-9]\.){3}(25[0-4]|(2[0-4]|1[0-9]|[1-9]?)[0-9]))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.opt (re.range "1" "9"))) (re.range "0" "9") (str.to_re ".")))) (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.opt (re.range "1" "9"))) (re.range "0" "9"))))))
; /filename=[^\n]*\x2epsd/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".psd/i\u{a}")))))
(check-sat)

(exit)
