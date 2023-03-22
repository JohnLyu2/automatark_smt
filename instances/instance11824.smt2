(declare-const X String)
; [^"\r\n]*
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{22}") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "\u{a}")))))
; (mailto\:|(news|(ht|f)tp(s?))\://)(([^[:space:]]+)|([^[:space:]]+)( #([^#]+)#)?)
(assert (str.in_re X (re.++ (re.union (str.to_re "mailto:") (re.++ (re.union (str.to_re "news") (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")))) (str.to_re "://"))) (re.union (re.++ (re.union (str.to_re "[") (str.to_re ":") (str.to_re "s") (str.to_re "p") (str.to_re "a") (str.to_re "c") (str.to_re "e")) (re.+ (str.to_re "]"))) (re.++ (re.opt (re.++ (str.to_re " #") (re.+ (re.comp (str.to_re "#"))) (str.to_re "#"))) (re.union (str.to_re "[") (str.to_re ":") (str.to_re "s") (str.to_re "p") (str.to_re "a") (str.to_re "c") (str.to_re "e")) (re.+ (str.to_re "]")))) (str.to_re "\u{a}"))))
; ^([Aa][LKSZRAEPlkszraep]|[Cc][AOTaot]|[Dd][ECec]|[Ff][LMlm]|[Gg][AUau]|[Hh][Ii]|[Ii][ADLNadln]|[Kk][SYsy]|[Ll][Aa]|[Mm][ADEHINOPSTadehinopst]|[Nn][CDEHJMVYcdehjmvy]|[Oo][HKRhkr]|[Pp][ARWarw]|[Rr][Ii]|[Ss][CDcd]|[Tt][NXnx]|[Uu][Tt]|[Vv][AITait]|[Ww][AIVYaivy])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "L") (str.to_re "K") (str.to_re "S") (str.to_re "Z") (str.to_re "R") (str.to_re "A") (str.to_re "E") (str.to_re "P") (str.to_re "l") (str.to_re "k") (str.to_re "s") (str.to_re "z") (str.to_re "r") (str.to_re "a") (str.to_re "e") (str.to_re "p"))) (re.++ (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "A") (str.to_re "O") (str.to_re "T") (str.to_re "a") (str.to_re "o") (str.to_re "t"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re "C") (str.to_re "e") (str.to_re "c"))) (re.++ (re.union (str.to_re "F") (str.to_re "f")) (re.union (str.to_re "L") (str.to_re "M") (str.to_re "l") (str.to_re "m"))) (re.++ (re.union (str.to_re "G") (str.to_re "g")) (re.union (str.to_re "A") (str.to_re "U") (str.to_re "a") (str.to_re "u"))) (re.++ (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "I") (str.to_re "i"))) (re.++ (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "L") (str.to_re "N") (str.to_re "a") (str.to_re "d") (str.to_re "l") (str.to_re "n"))) (re.++ (re.union (str.to_re "K") (str.to_re "k")) (re.union (str.to_re "S") (str.to_re "Y") (str.to_re "s") (str.to_re "y"))) (re.++ (re.union (str.to_re "L") (str.to_re "l")) (re.union (str.to_re "A") (str.to_re "a"))) (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "I") (str.to_re "N") (str.to_re "O") (str.to_re "P") (str.to_re "S") (str.to_re "T") (str.to_re "a") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "i") (str.to_re "n") (str.to_re "o") (str.to_re "p") (str.to_re "s") (str.to_re "t"))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "V") (str.to_re "Y") (str.to_re "c") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "j") (str.to_re "m") (str.to_re "v") (str.to_re "y"))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "H") (str.to_re "K") (str.to_re "R") (str.to_re "h") (str.to_re "k") (str.to_re "r"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "A") (str.to_re "R") (str.to_re "W") (str.to_re "a") (str.to_re "r") (str.to_re "w"))) (re.++ (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "I") (str.to_re "i"))) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "C") (str.to_re "D") (str.to_re "c") (str.to_re "d"))) (re.++ (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "N") (str.to_re "X") (str.to_re "n") (str.to_re "x"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "T") (str.to_re "t"))) (re.++ (re.union (str.to_re "V") (str.to_re "v")) (re.union (str.to_re "A") (str.to_re "I") (str.to_re "T") (str.to_re "a") (str.to_re "i") (str.to_re "t"))) (re.++ (re.union (str.to_re "W") (str.to_re "w")) (re.union (str.to_re "A") (str.to_re "I") (str.to_re "V") (str.to_re "Y") (str.to_re "a") (str.to_re "i") (str.to_re "v") (str.to_re "y")))) (str.to_re "\u{a}")))))
(check-sat)
