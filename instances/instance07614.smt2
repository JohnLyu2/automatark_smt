(declare-const X String)
; (^\d{1,3}$)|(\d{1,3})\.?(\d{0,0}[0,5])
(assert (not (str.in_re X (re.union ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to_re ".")) (str.to_re "\u{a}") ((_ re.loop 0 0) (re.range "0" "9")) (re.union (str.to_re "0") (str.to_re ",") (str.to_re "5")))))))
; ^\d*\.?((25)|(50)|(5)|(75)|(0)|(00))?$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re "25") (str.to_re "50") (str.to_re "5") (str.to_re "75") (str.to_re "0") (str.to_re "00"))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2enab/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".nab/i\u{a}"))))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}"))))
(check-sat)

(exit)
