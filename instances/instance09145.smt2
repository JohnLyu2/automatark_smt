(declare-const X String)
; SPY\s\x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "SPY") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[StaticHost:FROM:cs.shopperreports.com\u{a}"))))
; ^(0|(([1-9]{1}|[1-9]{1}[0-9]{1}|[1-9]{1}[0-9]{2}){1}(\ [0-9]{3}){0,})),(([0-9]{2})|\-\-)([\ ]{1})(€|EUR|EURO){1}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "0") (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.* (re.++ (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to_re ",") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "--")) ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 1 1) (re.union (str.to_re "\u{20ac}") (str.to_re "EUR") (str.to_re "EURO"))) (str.to_re "\u{a}")))))
; Server\x3AWordTheHost\x3afrom
(assert (not (str.in_re X (str.to_re "Server:WordTheHost:from\u{a}"))))
; \x2Fcommunicatortb[^\n\r]*\x2FGR.*Reportinfowhenu\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "/communicatortb") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/GR") (re.* re.allchar) (str.to_re "Reportinfowhenu.com\u{13}\u{a}"))))
; (\"http:\/\/www\.youtube\.com\/v\/\w{11}\&rel\=1\")
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}\u{22}http://www.youtube.com/v/") ((_ re.loop 11 11) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "&rel=1\u{22}")))))
(check-sat)
