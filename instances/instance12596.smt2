(declare-const X String)
; ^([A-Z]{2}|[A-Z]\d|\d[A-Z])[1-9](\d{1,3})?$
(assert (not (str.in_re X (re.++ (re.union ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "A" "Z"))) (re.range "1" "9") (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; Host\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}"))))
; /filename=[^\n]*\x2easf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asf/i\u{a}")))))
; com\x2Findex\.php\?tpid=onspyblpatUser-Agent\x3ASurveillance
(assert (str.in_re X (str.to_re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\u{13}\u{a}")))
(check-sat)
