(declare-const X String)
; ^(0|(\+)?[1-9]{1}[0-9]{0,8}|(\+)?[1-3]{1}[0-9]{1,9}|(\+)?[4]{1}([0-1]{1}[0-9]{8}|[2]{1}([0-8]{1}[0-9]{7}|[9]{1}([0-3]{1}[0-9]{6}|[4]{1}([0-8]{1}[0-9]{5}|[9]{1}([0-5]{1}[0-9]{4}|[6]{1}([0-6]{1}[0-9]{3}|[7]{1}([0-1]{1}[0-9]{2}|[2]{1}([0-8]{1}[0-9]{1}|[9]{1}[0-5]{1})))))))))$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "0") (re.++ (re.opt (str.to_re "+")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 8) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "+")) ((_ re.loop 1 1) (re.range "1" "3")) ((_ re.loop 1 9) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "+")) ((_ re.loop 1 1) (str.to_re "4")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "8")) ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "9")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "3")) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "4")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "8")) ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "9")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "6")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "7")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "8")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "9")) ((_ re.loop 1 1) (re.range "0" "5")))))))))))))))))))) (str.to_re "\u{a}")))))
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to_re "waiting") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hdUser-Agent:\u{a}"))))
; ^\$?(\d{1,3}(\,\d{3})*|(\d+))(\.\d{0,2})?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2eclass/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".class/i\u{a}"))))
(check-sat)
