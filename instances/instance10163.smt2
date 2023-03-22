(declare-const X String)
; port\d+\.compress\s+aresflashdownloader\x2Ecomv\x2Edll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in_re X (re.++ (str.to_re "port") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "aresflashdownloader.comv.dll?[DRIVEHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}")))))
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (str.in_re X (re.++ (str.to_re "//software.php?/Ui\u{a}") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
; /\x2Edocument\x2EinsertBefore\s*\x28[^\x2C]+\x29/smi
(assert (not (str.in_re X (re.++ (str.to_re "/.document.insertBefore") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ","))) (str.to_re ")/smi\u{a}")))))
; ^([1-9]{1}(([0-9])?){2})+(,[0-9]{1}[0-9]{2})*$
(assert (str.in_re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.opt (re.range "0" "9"))))) (re.* (re.++ (str.to_re ",") ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
