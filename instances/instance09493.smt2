(declare-const X String)
; \x2Easpxdata\.warezclient\.comWinCrashrunningUser-Agent\x3Awowokay
(assert (str.in_re X (str.to_re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\u{a}")))
; ^.{2,}$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) re.allchar) (re.* re.allchar)))))
; /filename=[^\n]*\x2es3m/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".s3m/i\u{a}")))))
(check-sat)
