(declare-const X String)
; Id\x3d\x5b\s+Host\x3A\s+www\x2Eyoogee\x2EcomHost\x3A\<title\>Actual
(assert (str.in_re X (re.++ (str.to_re "Id=[") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.yoogee.com\u{13}Host:<title>Actual\u{a}"))))
; ^((\(([1-9]{2})\))(\s)?(\.)?(\-)?([0-9]{0,1})?([0-9]{4})(\s)?(\.)?(\-)?([0-9]{4})|(([1-9]{2}))(\s)?(\.)?(\-)?([0-9]{0,1})?([0-9]{4})(\s)?(\.)?(\-)?([0-9]{4}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ".")) (re.opt (str.to_re "-")) (re.opt (re.opt (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ".")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re ")")) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ".")) (re.opt (str.to_re "-")) (re.opt (re.opt (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re ".")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; ^\d+\.\d\.\d[01]\d[0-3]\d\.[1-9]\d*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to_re ".") (re.range "1" "9") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; protocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (str.to_re "protocolhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)

(exit)
