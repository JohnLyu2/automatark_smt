(declare-const X String)
; daosearch\x2EcomSubject\x3A
(assert (not (str.in_re X (str.to_re "daosearch.comSubject:\u{a}"))))
; /filename=[^\n]*\x2ef4p/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4p/i\u{a}")))))
; Host\x3A\sclvompycem\x2fcen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "clvompycem/cen.vcn\u{a}")))))
; \x22The\s+e2give\.com\s+NETObserve
(assert (str.in_re X (re.++ (str.to_re "\u{22}The") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "NETObserve\u{a}"))))
; Host\x3A\dMicrosoft\w+\+Version\+
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "+Version+\u{a}")))))
(check-sat)
