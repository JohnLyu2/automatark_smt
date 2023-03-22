(declare-const X String)
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "www.2-seek.com/search\u{a}"))))
; ^\d$|^[1][0]$
(assert (not (str.in_re X (re.union (re.range "0" "9") (str.to_re "10\u{a}")))))
; HTTPwwwProbnymomspyo\x2fzowy
(assert (not (str.in_re X (str.to_re "HTTPwwwProbnymomspyo/zowy\u{a}"))))
; \xA9
(assert (str.in_re X (str.to_re "\u{a9}\u{a}")))
; ^(ac|AC|al|AL|am|AM|ap|AP|ba|BA|ce|CE|df|DF|es|ES|go|GO|ma|MA|mg|MG|ms|MS|mt|MT|pa|PA|pb|PB|pe|PE|pi|PI|pr|PR|rj|RJ|rn|RN|ro|RO|rr|RR|rs|RS|sc|SC|se|SE|sp|SP|to|TO)$
(assert (str.in_re X (re.++ (re.union (str.to_re "ac") (str.to_re "AC") (str.to_re "al") (str.to_re "AL") (str.to_re "am") (str.to_re "AM") (str.to_re "ap") (str.to_re "AP") (str.to_re "ba") (str.to_re "BA") (str.to_re "ce") (str.to_re "CE") (str.to_re "df") (str.to_re "DF") (str.to_re "es") (str.to_re "ES") (str.to_re "go") (str.to_re "GO") (str.to_re "ma") (str.to_re "MA") (str.to_re "mg") (str.to_re "MG") (str.to_re "ms") (str.to_re "MS") (str.to_re "mt") (str.to_re "MT") (str.to_re "pa") (str.to_re "PA") (str.to_re "pb") (str.to_re "PB") (str.to_re "pe") (str.to_re "PE") (str.to_re "pi") (str.to_re "PI") (str.to_re "pr") (str.to_re "PR") (str.to_re "rj") (str.to_re "RJ") (str.to_re "rn") (str.to_re "RN") (str.to_re "ro") (str.to_re "RO") (str.to_re "rr") (str.to_re "RR") (str.to_re "rs") (str.to_re "RS") (str.to_re "sc") (str.to_re "SC") (str.to_re "se") (str.to_re "SE") (str.to_re "sp") (str.to_re "SP") (str.to_re "to") (str.to_re "TO")) (str.to_re "\u{a}"))))
(check-sat)
