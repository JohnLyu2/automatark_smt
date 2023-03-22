(declare-const X String)
; /\x2eoga([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.oga") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; User-Agent\x3A[^\n\r]*HTTP_RAT_
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "HTTP_RAT_\u{a}")))))
; /filename=[^\n]*\x2elnk/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lnk/i\u{a}"))))
; Spy\s+\x0d\x0a.*YAHOOdestroyed\x21Host\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Spy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{d}\u{a}") (re.* re.allchar) (str.to_re "YAHOOdestroyed!Host:\u{a}")))))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (not (str.in_re X (re.++ (str.to_re "/?spl=") (re.range "0" "9") (str.to_re "&br=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&vers=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&s=/H\u{a}")))))
(check-sat)
