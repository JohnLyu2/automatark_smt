(declare-const X String)
; ^((4\d{3})|(5[1-5]\d{2})|(6011))-?\d{4}-?\d{4}-?\d{4}|3[4,7]\d{13}$
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "6011")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "3") (re.union (str.to_re "4") (str.to_re ",") (str.to_re "7")) ((_ re.loop 13 13) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; Travel\s+version\s+lnzzlnbk\x2fpkrm\.finFILESIZE\x3EM1User-Agent\x3AAgentwww\x2Eweepee\x2EcomOnlineM1Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "Travel") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.finFILESIZE>\u{13}M1User-Agent:Agentwww.weepee.com\u{1b}OnlineM1Host:\u{a}")))))
; /^USER\x20(XP|98|95|NT|ME|WIN|2K3)\x2d\d+\x20\x2a\x20\x30\x20\x3a/mi
(assert (not (str.in_re X (re.++ (str.to_re "/USER ") (re.union (str.to_re "XP") (str.to_re "98") (str.to_re "95") (str.to_re "NT") (str.to_re "ME") (str.to_re "WIN") (str.to_re "2K3")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " * 0 :/mi\u{a}")))))
(check-sat)
