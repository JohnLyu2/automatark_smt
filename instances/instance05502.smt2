(declare-const X String)
; \.cfg\d+stale\d+GmbHPG=SPEEDBARcuReferer\x3ASpediazmnjgmomgbdz\x2fzzmw\.gztHost\x3AHost\x3Azopabora\x2Einfo
(assert (not (str.in_re X (re.++ (str.to_re ".cfg") (re.+ (re.range "0" "9")) (str.to_re "stale") (re.+ (re.range "0" "9")) (str.to_re "GmbHPG=SPEEDBARcuReferer:Spediazmnjgmomgbdz/zzmw.gztHost:Host:zopabora.info\u{a}")))))
(check-sat)

(exit)
