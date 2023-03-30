(declare-const X String)
; /filename=[^\n]*\x2edocx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".docx/i\u{a}")))))
; Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (not (str.in_re X (str.to_re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\u{13}\u{a}"))))
; ^(.|\n){0,16}$
(assert (str.in_re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "\u{a}"))))
; v\x2E\s+ocllceclbhs\x2fgth\w+http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in_re X (re.++ (str.to_re "v.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "http://www.searchinweb.com/search.php?said=bar\u{a}"))))
(check-sat)

(exit)
