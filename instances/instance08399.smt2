(declare-const X String)
; select\x2FGet\s+Host\x3A.*ppcdomain\x2Eco\x2Euk
(assert (not (str.in_re X (re.++ (str.to_re "select/Get") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ppcdomain.co.uk\u{a}")))))
; User-Agent\x3a\sRequestwww\x2Ealtnet\x2EcomSubject\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Requestwww.altnet.com\u{1b}Subject:\u{a}")))))
; ookflolfctm\x2fnmot\.fmu
(assert (not (str.in_re X (str.to_re "ookflolfctm/nmot.fmu\u{a}"))))
; ^((\d{3}[- ]\d{3}[- ]\d{2}[- ]\d{2})|(\d{3}[- ]\d{2}[- ]\d{2}[- ]\d{3}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; Host\x3AFrom\x3aUser-Agent\x3A\x2Fr\x2Fkeys\x2FkeysClient
(assert (str.in_re X (str.to_re "Host:From:User-Agent:/r/keys/keysClient\u{a}")))
(check-sat)

(exit)
