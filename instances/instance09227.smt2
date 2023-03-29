(declare-const X String)
; /^\x2f\d{3}\x2f\d{3}\x2ehtml$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".html/U\u{a}")))))
; action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in_re X (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}")))
; /filename=[^\n]*\x2esvg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".svg/i\u{a}")))))
; ^([-]?[0-9]?(\.[0-9]{0,2})?)$|^([-]?([1][0-1])(\.[0-9]{0,2})?)$|^([-]?([1][0-3](\.[0]{0,2})))$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "-")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "1") (re.range "0" "1")) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (str.to_re "1") (re.range "0" "3") (str.to_re ".") ((_ re.loop 0 2) (str.to_re "0"))))))
; User-Agent\x3A\d+User-Agent\x3A\d+connectedNodes\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "connectedNodes/cgi-bin/PopupV\u{a}"))))
(check-sat)

(exit)
