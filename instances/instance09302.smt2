(declare-const X String)
; /\x2ewk4([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wk4") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3AProAgentIDENTIFY
(assert (str.in_re X (str.to_re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\u{a}")))
; Host\x3AHANDYwww\x2Epurityscan\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:HANDYwww.purityscan.com\u{a}"))))
(check-sat)

(exit)
