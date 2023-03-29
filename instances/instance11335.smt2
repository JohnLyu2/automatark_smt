(declare-const X String)
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "DisableSandboxAndDrop") (str.to_re "ConfusedClass") (str.to_re "FieldAccessVerifierExpl")) (str.to_re ".class/ims\u{a}"))))
; \x22StarLogger\x22\w+Host\x3aSoftwareHost\x3AjokeWEBCAM-
(assert (str.in_re X (re.++ (str.to_re "\u{22}StarLogger\u{22}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:jokeWEBCAM-\u{a}"))))
; ^[-+]?[0-9]\d{0,2}(\.\d{1,2})?%?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.range "0" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to_re "%")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2ekvl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".kvl/i\u{a}")))))
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (str.in_re X (str.to_re "WinCrashcomHost:tid=%toolbar_id4.8.4\u{a}")))
(check-sat)

(exit)
