(declare-const X String)
; /filename=[^\n]*\x2eeot/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eot/i\u{a}")))))
; as\x2Estarware\x2Ecom%3fUser-Agent\x3Ahostie
(assert (not (str.in_re X (str.to_re "as.starware.com%3fUser-Agent:hostie\u{a}"))))
(check-sat)

(exit)
