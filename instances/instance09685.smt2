(declare-const X String)
; /\x2evwr([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.vwr") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\x2ereg([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.reg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^((((((((jan(uary)?)|(mar(ch)?)|(may)|(july?)|(aug(ust)?)|(oct(ober)?)|(dec(ember)?)) ((3[01])|29))|(((apr(il)?)|(june?)|(sep(tember)?)|(nov(ember)?)) ((30)|(29)))|(((jan(uary)?)|(feb(ruary)?|(mar(ch)?)|(apr(il)?)|(may)|(june?)|(july?)|(aug(ust)?)|(sep(tember)?)|(oct(ober)?)|(nov(ember)?)|(dec(ember)?))) (2[0-8]|(1\d)|(0?[1-9])))),? )|(((((1[02])|(0?[13578]))[\.\-/]((3[01])|29))|(((11)|(0?[469]))[\.\-/]((30)|(29)))|(((1[0-2])|(0?[1-9]))[\.\-/](2[0-8]|(1\d)|(0?[1-9]))))[\.\-/])|(((((3[01])|29)[ \-\./]((jan(uary)?)|(mar(ch)?)|(may)|(july?)|(aug(ust)?)|(oct(ober)?)|(dec(ember)?)))|(((30)|(29))[ \.\-/]((apr(il)?)|(june?)|(sep(tember)?)|(nov(ember)?)))|((2[0-8]|(1\d)|(0?[1-9]))[ \.\-/]((jan(uary)?)|(feb(ruary)?|(mar(ch)?)|(apr(il)?)|(may)|(june?)|(july?)|(aug(ust)?)|(sep(tember)?)|(oct(ober)?)|(nov(ember)?)|(dec(ember)?)))))[ \-\./])|((((3[01])|29)((jan)|(mar)|(may)|(jul)|(aug)|(oct)|(dec)))|(((30)|(29))((apr)|(jun)|(sep)|(nov)))|((2[0-8]|(1\d)|(0[1-9]))((jan)|(feb)|(mar)|(apr)|(may)|(jun)|(jul)|(aug)|(sep)|(oct)|(nov)|(dec)))))(((175[3-9])|(17[6-9]\d)|(1[89]\d{2})|[2-9]\d{3})|\d{2}))|((((175[3-9])|(17[6-9]\d)|(1[89]\d{2})|[2-9]\d{3})|\d{2})((((1[02])|(0[13578]))((3[01])|29))|(((11)|(0[469]))((30)|(29)))|(((1[0-2])|(0[1-9]))(2[0-8]|(1\d)|(0[1-9])))))|(((29feb)|(29[ \.\-/]feb(ruary)?[ \.\-/])|(feb(ruary)? 29,? ?)|(0?2[\.\-/]29[\.\-/]))((((([2468][048])|([3579][26]))00)|(17((56)|([68][048])|([79][26])))|(((1[89])|([2-9]\d))(([2468][048])|([13579][26])|(0[48]))))|(([02468][048])|([13579][26]))))|(((((([2468][048])|([3579][26]))00)|(17((56)|([68][048])|([79][26])))|(((1[89])|([2-9]\d))(([2468][048])|([13579][26])|(0[48]))))|(([02468][048])|([13579][26])))(0229)))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "jan") (re.opt (str.to_re "uary"))) (re.++ (str.to_re "mar") (re.opt (str.to_re "ch"))) (str.to_re "may") (re.++ (str.to_re "jul") (re.opt (str.to_re "y"))) (re.++ (str.to_re "aug") (re.opt (str.to_re "ust"))) (re.++ (str.to_re "oct") (re.opt (str.to_re "ober"))) (re.++ (str.to_re "dec") (re.opt (str.to_re "ember")))) (str.to_re " ") (re.union (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "29"))) (re.++ (re.union (re.++ (str.to_re "apr") (re.opt (str.to_re "il"))) (re.++ (str.to_re "jun") (re.opt (str.to_re "e"))) (re.++ (str.to_re "sep") (re.opt (str.to_re "tember"))) (re.++ (str.to_re "nov") (re.opt (str.to_re "ember")))) (str.to_re " ") (re.union (str.to_re "30") (str.to_re "29"))) (re.++ (re.union (re.++ (str.to_re "jan") (re.opt (str.to_re "uary"))) (re.++ (str.to_re "feb") (re.opt (str.to_re "ruary"))) (re.++ (str.to_re "mar") (re.opt (str.to_re "ch"))) (re.++ (str.to_re "apr") (re.opt (str.to_re "il"))) (str.to_re "may") (re.++ (str.to_re "jun") (re.opt (str.to_re "e"))) (re.++ (str.to_re "jul") (re.opt (str.to_re "y"))) (re.++ (str.to_re "aug") (re.opt (str.to_re "ust"))) (re.++ (str.to_re "sep") (re.opt (str.to_re "tember"))) (re.++ (str.to_re "oct") (re.opt (str.to_re "ober"))) (re.++ (str.to_re "nov") (re.opt (str.to_re "ember"))) (re.++ (str.to_re "dec") (re.opt (str.to_re "ember")))) (str.to_re " ") (re.union (re.++ (str.to_re "2") (re.range "0" "8")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))))) (re.opt (str.to_re ",")) (str.to_re " ")) (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))) (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8")))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "29"))) (re.++ (re.union (str.to_re "11") (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9")))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")) (re.union (str.to_re "30") (str.to_re "29"))) (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "2") (re.range "0" "8")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/"))) (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "29")) (re.union (str.to_re " ") (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (str.to_re "jan") (re.opt (str.to_re "uary"))) (re.++ (str.to_re "mar") (re.opt (str.to_re "ch"))) (str.to_re "may") (re.++ (str.to_re "jul") (re.opt (str.to_re "y"))) (re.++ (str.to_re "aug") (re.opt (str.to_re "ust"))) (re.++ (str.to_re "oct") (re.opt (str.to_re "ober"))) (re.++ (str.to_re "dec") (re.opt (str.to_re "ember"))))) (re.++ (re.union (str.to_re "30") (str.to_re "29")) (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "apr") (re.opt (str.to_re "il"))) (re.++ (str.to_re "jun") (re.opt (str.to_re "e"))) (re.++ (str.to_re "sep") (re.opt (str.to_re "tember"))) (re.++ (str.to_re "nov") (re.opt (str.to_re "ember"))))) (re.++ (re.union (re.++ (str.to_re "2") (re.range "0" "8")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "jan") (re.opt (str.to_re "uary"))) (re.++ (str.to_re "feb") (re.opt (str.to_re "ruary"))) (re.++ (str.to_re "mar") (re.opt (str.to_re "ch"))) (re.++ (str.to_re "apr") (re.opt (str.to_re "il"))) (str.to_re "may") (re.++ (str.to_re "jun") (re.opt (str.to_re "e"))) (re.++ (str.to_re "jul") (re.opt (str.to_re "y"))) (re.++ (str.to_re "aug") (re.opt (str.to_re "ust"))) (re.++ (str.to_re "sep") (re.opt (str.to_re "tember"))) (re.++ (str.to_re "oct") (re.opt (str.to_re "ober"))) (re.++ (str.to_re "nov") (re.opt (str.to_re "ember"))) (re.++ (str.to_re "dec") (re.opt (str.to_re "ember")))))) (re.union (str.to_re " ") (str.to_re "-") (str.to_re ".") (str.to_re "/"))) (re.++ (re.union (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "29")) (re.union (str.to_re "jan") (str.to_re "mar") (str.to_re "may") (str.to_re "jul") (str.to_re "aug") (str.to_re "oct") (str.to_re "dec"))) (re.++ (re.union (str.to_re "30") (str.to_re "29")) (re.union (str.to_re "apr") (str.to_re "jun") (str.to_re "sep") (str.to_re "nov"))) (re.++ (re.union (re.++ (str.to_re "2") (re.range "0" "8")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "0") (re.range "1" "9"))) (re.union (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "oct") (str.to_re "nov") (str.to_re "dec")))) (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "175") (re.range "3" "9")) (re.++ (str.to_re "17") (re.range "6" "9") (re.range "0" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "8") (str.to_re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "175") (re.range "3" "9")) (re.++ (str.to_re "17") (re.range "6" "9") (re.range "0" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "8") (str.to_re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))) (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8")))) (re.union (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "29"))) (re.++ (re.union (str.to_re "11") (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9")))) (re.union (str.to_re "30") (str.to_re "29"))) (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.++ (str.to_re "0") (re.range "1" "9"))) (re.union (re.++ (str.to_re "2") (re.range "0" "8")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "0") (re.range "1" "9")))))) (re.++ (re.union (str.to_re "29feb") (re.++ (str.to_re "29") (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-") (str.to_re "/")) (str.to_re "feb") (re.opt (str.to_re "ruary")) (re.union (str.to_re " ") (str.to_re ".") (str.to_re "-") (str.to_re "/"))) (re.++ (str.to_re "feb") (re.opt (str.to_re "ruary")) (str.to_re " 29") (re.opt (str.to_re ",")) (re.opt (str.to_re " "))) (re.++ (re.opt (str.to_re "0")) (str.to_re "2") (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")) (str.to_re "29") (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")))) (re.union (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00")) (re.++ (str.to_re "17") (re.union (str.to_re "56") (re.++ (re.union (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))))) (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00")) (re.++ (str.to_re "17") (re.union (str.to_re "56") (re.++ (re.union (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))))) (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "0229"))) (str.to_re "\u{a}")))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}")))
(check-sat)

(exit)
