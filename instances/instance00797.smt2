(declare-const X String)
; spas\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=
(assert (not (str.in_re X (re.++ (str.to_re "spas") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=\u{a}")))))
(check-sat)

(exit)
