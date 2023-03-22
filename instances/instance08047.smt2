(declare-const X String)
; dll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (str.in_re X (str.to_re "dll?[DRIVEHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}")))
; HXDownload\s+Host\x3AArcadeHourspjpoptwql\x2frlnjFrom\x3A
(assert (not (str.in_re X (re.++ (str.to_re "HXDownload") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:ArcadeHourspjpoptwql/rlnjFrom:\u{a}")))))
(check-sat)
