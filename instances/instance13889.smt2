(declare-const X String)
; www\.searchinweb\.com\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (not (str.in_re X (re.++ (str.to_re "www.searchinweb.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}")))))
; aresflashdownloader\x2Ecom%3fccecaedbebfcaf\x2Ecom\stoolbar\.anwb\.nl
(assert (not (str.in_re X (re.++ (str.to_re "aresflashdownloader.com%3fccecaedbebfcaf.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl\u{a}")))))
; /filename=[\x22\x27]?[^\n]*\x2epif[\x22\x27\s]/si
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pif") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}"))))
(check-sat)
