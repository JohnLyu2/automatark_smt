(declare-const X String)
; /\x2eotf([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.otf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2eppt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ppt/i\u{a}"))))
; ^(20|21|22|23|[01]\d|\d)(([:.][0-5]\d){1,2})$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "20") (str.to_re "21") (str.to_re "22") (str.to_re "23") (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to_re ":") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; isSAH\*Agentwww\.raxsearch\.comHost\x3A-~-\x22The
(assert (not (str.in_re X (str.to_re "isSAH*Agentwww.raxsearch.comHost:-~-\u{22}The\u{a}"))))
(check-sat)

(exit)
