(declare-const X String)
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "HWAE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Email") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:User-Agent:wowokayHost:\u{a}")))))
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (str.in_re X (str.to_re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\u{a}")))
; ^\d*(\.\d*)$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (str.to_re "\u{a}.") (re.* (re.range "0" "9")))))
; /poc\/(Exploit|myClassLoader|pocMain|runCmd)\.class/ims
(assert (str.in_re X (re.++ (str.to_re "/poc/") (re.union (str.to_re "Exploit") (str.to_re "myClassLoader") (str.to_re "pocMain") (str.to_re "runCmd")) (str.to_re ".class/ims\u{a}"))))
; Address\x3A\s+SbAtsHTTP_RAT_Subject\x3A
(assert (str.in_re X (re.++ (str.to_re "Address:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SbAtsHTTP_RAT_Subject:\u{a}"))))
(check-sat)
