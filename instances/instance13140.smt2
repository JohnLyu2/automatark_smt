(declare-const X String)
; Toolbar\x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (str.in_re X (str.to_re "Toolbar/images/nocache/tr/gca/m.gif?\u{a}")))
; Host\x3A\w+page=largePass-Onseqepagqfphv\x2fsfd
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "page=largePass-Onseqepagqfphv/sfd\u{a}")))))
; ^((\$?\-?)|(\-?\$?))([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)?(\.[0-9]*)?$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "$")) (re.opt (str.to_re "-"))) (re.++ (re.opt (str.to_re "-")) (re.opt (str.to_re "$")))) (re.opt (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.* (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
