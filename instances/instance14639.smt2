(declare-const X String)
; zopabora\x2EinfocomhoroscopeTravelInsidefromUser-Agent\x3AFrom\x3Awww\x2EZSearchResults\x2EcomExplorer
(assert (not (str.in_re X (str.to_re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\u{13}Explorer\u{a}"))))
; ^[+]\d{1,2}\(\d{2,3}\)\d{6,8}(\#\d{1,10})?$
(assert (not (str.in_re X (re.++ (str.to_re "+") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ")") ((_ re.loop 6 8) (re.range "0" "9")) (re.opt (re.++ (str.to_re "#") ((_ re.loop 1 10) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; zopabora\x2Einfo\s+Inside.*User-Agent\x3A\s+SystemSleuthserverUser-Agent\x3a\x2Fnewsurfer4\x2FMicrosoft
(assert (str.in_re X (re.++ (str.to_re "zopabora.info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Inside") (re.* re.allchar) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SystemSleuth\u{13}serverUser-Agent:/newsurfer4/Microsoft\u{a}"))))
; /filename=[^\n]*\x2escr/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".scr/i\u{a}")))))
(check-sat)

(exit)
