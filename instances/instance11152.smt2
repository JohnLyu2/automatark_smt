(declare-const X String)
; 1\-extreme\x2Ebizasdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in_re X (str.to_re "1-extreme.bizasdbiz.bizfrom|roogoo|CurrentiOpus\u{a}"))))
; /^[a-z]\x3D[0-9a-z]{100}$/Pm
(assert (str.in_re X (re.++ (str.to_re "/") (re.range "a" "z") (str.to_re "=") ((_ re.loop 100 100) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "/Pm\u{a}"))))
; /^\x2f\x3fxclve\x5f[a-zA-Z0-9]{30}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//?xclve_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/Ui\u{a}")))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (not (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}"))))
(check-sat)
