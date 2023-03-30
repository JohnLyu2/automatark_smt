(declare-const X String)
; \x2Ftoolbar\x2F\d+www\x2Ericercadoppia\x2EcomPALTALKSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "/toolbar/") (re.+ (re.range "0" "9")) (str.to_re "www.ricercadoppia.comPALTALKSubject:\u{a}")))))
; OSSProxy\s+%3f\s+Supervisor\s+User-Agent\x3ASearch\stoolbar\.anwb\.nlSpyAgentAdminBladeReferer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "OSSProxy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Supervisor") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Search") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nlSpyAgentAdminBladeReferer:\u{a}")))))
; ^((\d{2,4})/)?((\d{6,8})|(\d{2})-(\d{2})-(\d{2,4})|(\d{3,4})-(\d{3,4}))$
(assert (not (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "/"))) (re.union ((_ re.loop 6 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2eclass/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".class/i\u{a}")))))
; ^[A-Za-z0-9_]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
