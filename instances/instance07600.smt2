(declare-const X String)
; YWRtaW46YWRtaW4www\x2Ee-finder\x2EccNSIS_DOWNLOADHost\x3A
(assert (str.in_re X (str.to_re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\u{a}")))
; <[iI][fF][rR][aA][mM][eE]([^>]*[^/>]*[/>]*[>])
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F")) (re.union (str.to_re "r") (str.to_re "R")) (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "e") (str.to_re "E")) (str.to_re "\u{a}") (re.* (re.comp (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (re.* (re.union (str.to_re "/") (str.to_re ">"))) (str.to_re ">")))))
; /<linearGradient[^>]*>\s*<\x2flinearGradient>/i
(assert (not (str.in_re X (re.++ (str.to_re "/<linearGradient") (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "</linearGradient>/i\u{a}")))))
; /filename=[^\n]*\x2eotf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".otf/i\u{a}")))))
(check-sat)
