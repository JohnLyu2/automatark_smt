(declare-const X String)
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.exe") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ^1?[1-9]$|^[1-2]0$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "1")) (re.range "1" "9")) (re.++ (re.range "1" "2") (str.to_re "0\u{a}"))))))
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in_re X (str.to_re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\u{a}"))))
(check-sat)
