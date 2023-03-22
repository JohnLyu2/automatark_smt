(declare-const X String)
; /\/docushare\/dsweb\/ResultBackgroundJobMultiple\/\d*[^\d]/U
(assert (str.in_re X (re.++ (str.to_re "//docushare/dsweb/ResultBackgroundJobMultiple/") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to_re "/U\u{a}"))))
; Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in_re X (str.to_re "Subject:AlexaOnline%21%21%21\u{a}"))))
; ^(\d+\.\d+)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")))))
; /filename=[^\n]*\x2ef4b/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4b/i\u{a}"))))
(check-sat)
