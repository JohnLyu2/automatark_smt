(declare-const X String)
; ^ ?(([BEGLMNSWbeglmnsw][0-9][0-9]?)|(([A-PR-UWYZa-pr-uwyz][A-HK-Ya-hk-y][0-9][0-9]?)|(([ENWenw][0-9][A-HJKSTUWa-hjkstuw])|([ENWenw][A-HK-Ya-hk-y][0-9][ABEHMNPRVWXYabehmnprvwxy])))) ?[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}$
(assert (str.in_re X (re.++ (re.opt (str.to_re " ")) (re.union (re.++ (re.union (str.to_re "B") (str.to_re "E") (str.to_re "G") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "S") (str.to_re "W") (str.to_re "b") (str.to_re "e") (str.to_re "g") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "s") (str.to_re "w")) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z") (re.range "a" "p") (re.range "r" "u") (str.to_re "w") (str.to_re "y") (str.to_re "z")) (re.union (re.range "A" "H") (re.range "K" "Y") (re.range "a" "h") (re.range "k" "y")) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (re.union (str.to_re "E") (str.to_re "N") (str.to_re "W") (str.to_re "e") (str.to_re "n") (str.to_re "w")) (re.range "0" "9") (re.union (re.range "A" "H") (str.to_re "J") (str.to_re "K") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (re.range "a" "h") (str.to_re "j") (str.to_re "k") (str.to_re "s") (str.to_re "t") (str.to_re "u") (str.to_re "w"))) (re.++ (re.union (str.to_re "E") (str.to_re "N") (str.to_re "W") (str.to_re "e") (str.to_re "n") (str.to_re "w")) (re.union (re.range "A" "H") (re.range "K" "Y") (re.range "a" "h") (re.range "k" "y")) (re.range "0" "9") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "a") (str.to_re "b") (str.to_re "e") (str.to_re "h") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "r") (str.to_re "v") (str.to_re "w") (str.to_re "x") (str.to_re "y")))) (re.opt (str.to_re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "H") (str.to_re "J") (str.to_re "L") (str.to_re "N") (re.range "P" "U") (re.range "W" "Z") (str.to_re "a") (str.to_re "b") (re.range "d" "h") (str.to_re "j") (str.to_re "l") (str.to_re "n") (re.range "p" "u") (re.range "w" "z"))) (str.to_re "\u{a}"))))
(check-sat)
