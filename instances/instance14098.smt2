(declare-const X String)
; /filename=[^\n]*\x2emka/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mka/i\u{a}"))))
; User-Agent\x3a\w+Owner\x3A
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:\u{a}")))))
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (str.in_re X (str.to_re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\u{a}")))
(check-sat)

(exit)
