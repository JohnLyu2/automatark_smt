(declare-const X String)
; (\[[abiu][^\[\]]*\])([^\[\]]+)(\[/?[abiu]\])
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "[") (str.to_re "]"))) (str.to_re "\u{a}[") (re.union (str.to_re "a") (str.to_re "b") (str.to_re "i") (str.to_re "u")) (re.* (re.union (str.to_re "[") (str.to_re "]"))) (str.to_re "][") (re.opt (str.to_re "/")) (re.union (str.to_re "a") (str.to_re "b") (str.to_re "i") (str.to_re "u")) (str.to_re "]"))))
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}")))
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to_re "&r=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
(check-sat)

(exit)
