(declare-const X String)
; ^(0|1)+$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2esearch-ms/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".search-ms/i\u{a}")))))
; zmnjgmomgbdz\x2fzzmw\.gzt\s+Reports\s+HostHost\x3aHost\x3AHost\x3AMyWebSearchSearchAssistant
(assert (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Reports") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HostHost:Host:Host:MyWebSearchSearchAssistant\u{a}"))))
; Host\x3A\d+UI2.*areprotocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "UI2") (re.* re.allchar) (str.to_re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)

(exit)
