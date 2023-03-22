(declare-const X String)
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\x2ej2k([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.j2k") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; \x5D\x2520\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (not (str.in_re X (re.++ (str.to_re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to_re "TM_SEARCH3engineto=/ezsb") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re ":\u{a}")))))
; ZC-Bridge\w+USER-AttachedReferer\x3AyouPointsUser-Agent\x3AHost\x3a
(assert (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "USER-AttachedReferer:youPointsUser-Agent:Host:\u{a}"))))
; sbRedirectionsHost\x3AHost\x3AUser-Agent\x3Ahotbar%3fwww\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in_re X (str.to_re "sbRedirections\u{1b}Host:Host:User-Agent:hotbar%3fwww.internetadvertisingcompany.biz\u{a}")))
(check-sat)
