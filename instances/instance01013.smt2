(declare-const X String)
; \b(((((one|t((en)|(wo)|(hree)|(welve)|(hirteen))|(evelen)|(f((our)|(ive))|s((ix)|(even))|eight|nine)(teen)?))\b(\s+hundred\s*)?)| ((t((wen)|(hir))|f((or)|(if))|s((ix)|(even))|eigh|nin)ty)(-(one|t((wo)|(hree))|f((our)|(ive))|s((ix)|(even))|eight|nine))?) (\s*(hundred|thousand|((([mb]|(t|quad)r))illion))\s*(and\s+)?)?)+
(assert (str.in_re X (re.++ (re.+ (re.++ (re.union (re.++ (re.union (str.to_re "one") (re.++ (str.to_re "t") (re.union (str.to_re "en") (str.to_re "wo") (str.to_re "hree") (str.to_re "welve") (str.to_re "hirteen"))) (str.to_re "evelen") (re.++ (re.union (re.++ (str.to_re "f") (re.union (str.to_re "our") (str.to_re "ive"))) (re.++ (str.to_re "s") (re.union (str.to_re "ix") (str.to_re "even"))) (str.to_re "eight") (str.to_re "nine")) (re.opt (str.to_re "teen")))) (re.opt (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hundred") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))) (re.++ (str.to_re " ") (re.opt (re.++ (str.to_re "-") (re.union (str.to_re "one") (re.++ (str.to_re "t") (re.union (str.to_re "wo") (str.to_re "hree"))) (re.++ (str.to_re "f") (re.union (str.to_re "our") (str.to_re "ive"))) (re.++ (str.to_re "s") (re.union (str.to_re "ix") (str.to_re "even"))) (str.to_re "eight") (str.to_re "nine")))) (re.union (re.++ (str.to_re "t") (re.union (str.to_re "wen") (str.to_re "hir"))) (re.++ (str.to_re "f") (re.union (str.to_re "or") (str.to_re "if"))) (re.++ (str.to_re "s") (re.union (str.to_re "ix") (str.to_re "even"))) (str.to_re "eigh") (str.to_re "nin")) (str.to_re "ty"))) (str.to_re " ") (re.opt (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "hundred") (str.to_re "thousand") (re.++ (re.union (re.++ (re.union (str.to_re "t") (str.to_re "quad")) (str.to_re "r")) (str.to_re "m") (str.to_re "b")) (str.to_re "illion"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (str.to_re "and") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
