(declare-const X String)
; /filename=[^\n]*\x2esearch-ms/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".search-ms/i\u{a}"))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}")))))
; action\x2EIP-FTPsearch\.dropspam\.com
(assert (not (str.in_re X (str.to_re "action.IP-FTPsearch.dropspam.com\u{a}"))))
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (not (str.in_re X (str.to_re "HXLogOnlyanHost:spasHost:\u{a}"))))
; logsFictionalReporterCookieUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "logsFictionalReporterCookieUser-Agent:\u{a}"))))
(check-sat)
