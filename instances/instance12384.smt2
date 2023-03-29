(declare-const X String)
; /\x2ecsv([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.csv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[^\n]*\x2eppt/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ppt/i\u{a}")))))
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (str.in_re X (re.++ (str.to_re "Runner") (re.* re.allchar) (str.to_re ".html") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "NetControl.Server\u{13}") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAH\u{a}"))))
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to_re "waiting") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hdUser-Agent:\u{a}")))))
(check-sat)

(exit)
