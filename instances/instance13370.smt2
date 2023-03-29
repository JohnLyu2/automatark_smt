(declare-const X String)
; ^[0-9]{6}$
(assert (str.in_re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
; SpyBuddySubject\x3Astats\x2edrivecleaner\x2ecom
(assert (not (str.in_re X (str.to_re "SpyBuddySubject:stats.drivecleaner.com\u{13}\u{a}"))))
; /\x2em4p([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.m4p") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; (<meta [.\w\W]*?\>)|(<style [.\w\W]*?</style>)|(<link [.\w\W]*?\>)|(<script [.\w\W]*?</script>)
(assert (str.in_re X (re.union (re.++ (str.to_re "<meta ") (re.* (re.union (str.to_re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">")) (re.++ (str.to_re "<style ") (re.* (re.union (str.to_re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "</style>")) (re.++ (str.to_re "<link ") (re.* (re.union (str.to_re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ">")) (re.++ (str.to_re "\u{a}<script ") (re.* (re.union (str.to_re ".") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "</script>")))))
; /Referer\x3a\x20[^\s]*\x3a8000\x2f[a-z]+\?[a-z]+=\d{6,7}\x0d\x0a/H
(assert (str.in_re X (re.++ (str.to_re "/Referer: ") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ":8000/") (re.+ (re.range "a" "z")) (str.to_re "?") (re.+ (re.range "a" "z")) (str.to_re "=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}"))))
(check-sat)

(exit)
