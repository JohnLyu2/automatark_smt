(declare-const X String)
; /\x2ecsd([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.csd") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (str.in_re X (str.to_re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\u{a}")))
; ^((1[01])|(\d)):[0-5]\d(:[0-5]\d)?\s?([apAP][Mm])?$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9")) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.union (str.to_re "a") (str.to_re "p") (str.to_re "A") (str.to_re "P")) (re.union (str.to_re "M") (str.to_re "m")))) (str.to_re "\u{a}")))))
; (facebook|twitter|youtube)
(assert (not (str.in_re X (re.++ (re.union (str.to_re "facebook") (str.to_re "twitter") (str.to_re "youtube")) (str.to_re "\u{a}")))))
; ([a-zA-Z]{2}[0-9]{1,2}\s{0,1}[0-9]{1,2}[a-zA-Z]{2})
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
(check-sat)

(exit)
