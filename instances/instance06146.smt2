(declare-const X String)
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (str.in_re X (re.++ (str.to_re "www.ZSearchResults.com\u{13}") (re.range "0" "9") (str.to_re "Bar") (re.* re.allchar) (str.to_re "sponsor2.ucmore.com\u{a}"))))
; ^ *([0-1]?[0-9]|[2][0-3]):[0-5][0-9] *(a|p|A|P)(m|M) *$
(assert (not (str.in_re X (re.++ (re.* (str.to_re " ")) (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") (re.* (str.to_re " ")) (re.union (str.to_re "a") (str.to_re "p") (str.to_re "A") (str.to_re "P")) (re.union (str.to_re "m") (str.to_re "M")) (re.* (str.to_re " ")) (str.to_re "\u{a}")))))
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (not (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}")))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in_re X (str.to_re "http://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)

(exit)
