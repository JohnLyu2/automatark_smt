(declare-const X String)
; ^\d{10}$
(assert (not (str.in_re X (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /^\x2frouji.txt$/mU
(assert (not (str.in_re X (re.++ (str.to_re "//rouji") re.allchar (str.to_re "txt/mU\u{a}")))))
; [^a-zA-Z \-]|(  )|(\-\-)|(^\s*$)
(assert (str.in_re X (re.union (str.to_re "  ") (str.to_re "--") (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")) (re.range "a" "z") (re.range "A" "Z") (str.to_re " ") (str.to_re "-"))))
; User-Agent\x3A\d+moreKontikiHost\x3a
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:\u{a}")))))
(check-sat)
