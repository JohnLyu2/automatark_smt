(declare-const X String)
; (^\(\)$|^\(((\([0-9]+,(\((\([0-9]+,[0-9]+,[0-9]+\),)*(\([0-9]+,[0-9]+,[0-9]+\)){1}\))+\),)*(\([0-9]+,(\((\([0-9]+,[0-9]+,[0-9]+\),)*(\([0-9]+,[0-9]+,[0-9]+\)){1}\))+\)){1}\)))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}(") (re.union (str.to_re ")") (re.++ (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.++ (str.to_re "(") (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ")"))) (str.to_re ")"))) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.++ (str.to_re "(") (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ")"))) (str.to_re ")"))) (str.to_re ")"))) (str.to_re ")"))))))
; EItrustyfiles\x2Ecomnick_name=CIA-Test
(assert (not (str.in_re X (str.to_re "EItrustyfiles.comnick_name=CIA-Test\u{a}"))))
(check-sat)

(exit)
