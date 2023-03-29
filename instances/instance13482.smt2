(declare-const X String)
; ed2k\xc0STATUS\xc0Server\x7D\x7BPort\x3Ahttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in_re X (str.to_re "ed2k\u{c0}STATUS\u{c0}Server\u{13}}{Port:http://tv.seekmo.com/showme.aspx?keyword=\u{a}")))
; is\s+lnzzlnbk\x2fpkrm\.fin\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (str.in_re X (re.++ (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:/toolbar/supremetb\u{a}"))))
; ^(big5|euc(kr|jpms)|binary|greek|tis620|hebrew|ascii|swe7|koi8(r|u)|(u|keyb)cs2|(dec|hp|utf|geostd|armscii)8|gb(k|2312)|cp(8(5(0|2)|66)|932|125(0|1|6|7))|latin(1|2|5|7)|(u|s)jis|mac(ce|roman))$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "big5") (re.++ (str.to_re "euc") (re.union (str.to_re "kr") (str.to_re "jpms"))) (str.to_re "binary") (str.to_re "greek") (str.to_re "tis620") (str.to_re "hebrew") (str.to_re "ascii") (str.to_re "swe7") (re.++ (str.to_re "koi8") (re.union (str.to_re "r") (str.to_re "u"))) (re.++ (re.union (str.to_re "u") (str.to_re "keyb")) (str.to_re "cs2")) (re.++ (re.union (str.to_re "dec") (str.to_re "hp") (str.to_re "utf") (str.to_re "geostd") (str.to_re "armscii")) (str.to_re "8")) (re.++ (str.to_re "gb") (re.union (str.to_re "k") (str.to_re "2312"))) (re.++ (str.to_re "cp") (re.union (re.++ (str.to_re "8") (re.union (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "2"))) (str.to_re "66"))) (str.to_re "932") (re.++ (str.to_re "125") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "6") (str.to_re "7"))))) (re.++ (str.to_re "latin") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "5") (str.to_re "7"))) (re.++ (re.union (str.to_re "u") (str.to_re "s")) (str.to_re "jis")) (re.++ (str.to_re "mac") (re.union (str.to_re "ce") (str.to_re "roman")))) (str.to_re "\u{a}")))))
; areHost\x3Ae2give\.comHost\x3aX-Mailer\x3AsportsHost\x3AToolbar
(assert (str.in_re X (str.to_re "areHost:e2give.comHost:X-Mailer:\u{13}sportsHost:Toolbar\u{a}")))
(check-sat)

(exit)
