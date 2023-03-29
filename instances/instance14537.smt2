(declare-const X String)
; /META-INF.*?[a-zA-Z]{7}\.class/smi
(assert (str.in_re X (re.++ (str.to_re "/META-INF") (re.* re.allchar) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re ".class/smi\u{a}"))))
; Host\x3AfromZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (str.in_re X (str.to_re "Host:fromZC-Bridgev.xml/NFO,Registered\u{a}")))
; /filename=[^\n]*\x2eflv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flv/i\u{a}")))))
(check-sat)

(exit)
