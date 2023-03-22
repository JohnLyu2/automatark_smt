(declare-const X String)
; ^(00|0?[1-9]|1[0-9]|2[0-3])\:([0-5][0-9])\:([0-5][0-9])$
(assert (str.in_re X (re.++ (re.union (str.to_re "00") (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; /filename=[^\n]*\x2evisprj/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".visprj/i\u{a}"))))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "adblock.linkz.comUser-Agent:email\u{a}"))))
; /\x2Fupdate\w\x2Ephp\x3Fp\x3D\d+.*User\x2DAgent\x3A\s+Mozilla\x2F4\x2E75\s\x5Ben\x5D\s\x28X11\x3B\sU\x3B\sLinux\s2\x2E2\x2E16\x2D3\si686\x29/smiH
(assert (str.in_re X (re.++ (str.to_re "//update") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re ".php?p=") (re.+ (re.range "0" "9")) (re.* re.allchar) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Mozilla/4.75") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[en]") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "(X11;") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "U;") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Linux") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "2.2.16-3") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "i686)/smiH\u{a}"))))
; <img .+ src[ ]*=[ ]*\"(.+)\"
(assert (str.in_re X (re.++ (str.to_re "<img ") (re.+ re.allchar) (str.to_re " src") (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (str.to_re "\u{22}") (re.+ re.allchar) (str.to_re "\u{22}\u{a}"))))
(check-sat)
