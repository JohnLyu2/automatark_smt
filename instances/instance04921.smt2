(declare-const X String)
; ^([Aa][LKSZRAEPlkszraep]|[Cc][AOTaot]|[Dd][ECec]|[Ff][LMlm]|[Gg][AUau]|HI|hi|[Ii][ADLNadln]|[Kk][SYsy]|LA|la|[Mm][ADEHINOPSTadehinopst]|[Nn][CDEHJMVYcdehjmvy]|[Oo][HKRhkr]|[Pp][ARWarw]|RI|ri|[Ss][CDcd]|[Tt][NXnx]|UT|ut|[Vv][AITait]|[Ww][AIVYaivy])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "L") (str.to_re "K") (str.to_re "S") (str.to_re "Z") (str.to_re "R") (str.to_re "A") (str.to_re "E") (str.to_re "P") (str.to_re "l") (str.to_re "k") (str.to_re "s") (str.to_re "z") (str.to_re "r") (str.to_re "a") (str.to_re "e") (str.to_re "p"))) (re.++ (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "A") (str.to_re "O") (str.to_re "T") (str.to_re "a") (str.to_re "o") (str.to_re "t"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re "C") (str.to_re "e") (str.to_re "c"))) (re.++ (re.union (str.to_re "F") (str.to_re "f")) (re.union (str.to_re "L") (str.to_re "M") (str.to_re "l") (str.to_re "m"))) (re.++ (re.union (str.to_re "G") (str.to_re "g")) (re.union (str.to_re "A") (str.to_re "U") (str.to_re "a") (str.to_re "u"))) (str.to_re "HI") (str.to_re "hi") (re.++ (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "L") (str.to_re "N") (str.to_re "a") (str.to_re "d") (str.to_re "l") (str.to_re "n"))) (re.++ (re.union (str.to_re "K") (str.to_re "k")) (re.union (str.to_re "S") (str.to_re "Y") (str.to_re "s") (str.to_re "y"))) (str.to_re "LA") (str.to_re "la") (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "I") (str.to_re "N") (str.to_re "O") (str.to_re "P") (str.to_re "S") (str.to_re "T") (str.to_re "a") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "i") (str.to_re "n") (str.to_re "o") (str.to_re "p") (str.to_re "s") (str.to_re "t"))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "V") (str.to_re "Y") (str.to_re "c") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "j") (str.to_re "m") (str.to_re "v") (str.to_re "y"))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "H") (str.to_re "K") (str.to_re "R") (str.to_re "h") (str.to_re "k") (str.to_re "r"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "A") (str.to_re "R") (str.to_re "W") (str.to_re "a") (str.to_re "r") (str.to_re "w"))) (str.to_re "RI") (str.to_re "ri") (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "C") (str.to_re "D") (str.to_re "c") (str.to_re "d"))) (re.++ (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "N") (str.to_re "X") (str.to_re "n") (str.to_re "x"))) (str.to_re "UT") (str.to_re "ut") (re.++ (re.union (str.to_re "V") (str.to_re "v")) (re.union (str.to_re "A") (str.to_re "I") (str.to_re "T") (str.to_re "a") (str.to_re "i") (str.to_re "t"))) (re.++ (re.union (str.to_re "W") (str.to_re "w")) (re.union (str.to_re "A") (str.to_re "I") (str.to_re "V") (str.to_re "Y") (str.to_re "a") (str.to_re "i") (str.to_re "v") (str.to_re "y")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
