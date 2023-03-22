(declare-const X String)
; Test\d+DesktopAddressIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in_re X (re.++ (str.to_re "Test") (re.+ (re.range "0" "9")) (str.to_re "DesktopAddressIDENTIFY666User-Agent:[Static\u{a}"))))
; logsFictionalReporterCookieUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "logsFictionalReporterCookieUser-Agent:\u{a}"))))
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}")))
(check-sat)
