(declare-const X String)
; /filename=[^\n]*\x2epict/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pict/i\u{a}"))))
; /\x2efon([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.fon") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; frame_ver2\s+communityLibrarySoftwareWinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid
(assert (not (str.in_re X (re.++ (str.to_re "frame_ver2") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "communityLibrarySoftwareWinCrashcomHost:tid=%toolbar_id\u{a}")))))
; ^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|11|12|10)-(19[0-9]{2})$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (str.to_re "11") (str.to_re "12") (str.to_re "10")) (str.to_re "-\u{a}19") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
