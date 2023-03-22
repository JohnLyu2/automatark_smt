(declare-const X String)
; /filename=[^\n]*\x2ebcl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bcl/i\u{a}")))))
; snprtz\x7Cdialno\s+3Awww\x2eurlblaze\x2enetulmxct\x2fmqoyc
(assert (not (str.in_re X (re.++ (str.to_re "snprtz|dialno") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "3Awww.urlblaze.netulmxct/mqoyc\u{a}")))))
; /\x2ewk4([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wk4") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B(\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B){500}/m
(assert (not (str.in_re X (re.++ (str.to_re "/\u{f6}\u{ec}\u{d9}\u{b3}g\u{cf}\u{9e}={") ((_ re.loop 500 500) (str.to_re "\u{f6}\u{ec}\u{d9}\u{b3}g\u{cf}\u{9e}={")) (str.to_re "/m\u{a}")))))
; /filename=[^\n]*\x2ewmf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmf/i\u{a}"))))
(check-sat)
