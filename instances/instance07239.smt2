(declare-const X String)
; ^([1-9]{0,1})([0-9]{1})((\.[0-9]{0,1})([0-9]{1})|(\,[0-9]{0,1})([0-9]{1}))?$
(assert (not (str.in_re X (re.++ (re.opt (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ".") (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",") (re.opt (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; Host\x3AHost\x3AFrom\x3a\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo\x2fzowy
(assert (str.in_re X (str.to_re "Host:Host:From:\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furaxbnymomspyo/zowy\u{a}")))
(check-sat)
