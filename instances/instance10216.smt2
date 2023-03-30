(declare-const X String)
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "e2give.comrichfind.com\u{22}007User-Agent:www.searchreslt.com\u{a}"))))
; ^[^<>`~!/@\#},.?"-$%:;)(_ ^{&*=|'+]+$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "<") (str.to_re ">") (str.to_re "`") (str.to_re "~") (str.to_re "!") (str.to_re "/") (str.to_re "@") (str.to_re "#") (str.to_re "}") (str.to_re ",") (str.to_re ".") (str.to_re "?") (re.range "\u{22}" "$") (str.to_re "%") (str.to_re ":") (str.to_re ";") (str.to_re ")") (str.to_re "(") (str.to_re "_") (str.to_re " ") (str.to_re "^") (str.to_re "{") (str.to_re "&") (str.to_re "*") (str.to_re "=") (str.to_re "|") (str.to_re "'") (str.to_re "+"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
