(declare-const X String)
; AdTools\d+rprpgbnrppb\x2fciExplorer\x2Fsto=notificationfindwww\x2Emakemesearch\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "AdTools") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ciExplorer/sto=notification\u{13}findwww.makemesearch.com\u{a}")))))
; \b([Jj](([Aa][Nn][Uu][Aa][Rr][Yy]|[Aa][Nn])|([Uu][Nn][Ee]|[Uu][Nn])|([Uu][Ll][Yy]|[Uu][Ll])))\b|\b((([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])[Ee][Mm])|[Oo][Cc][Tt][Oo])[Bb][Ee][Rr]|([Ss][Ee][Pp]|[Nn][Oo][Vv]|[Dd][Ee][Cc]|[Oo][Cc][Tt])\b|\b([Mm][Aa]([Yy]|([Rr][Cc][Hh]|[Rr])))\b|\b[Aa](([Pp][Rr][Ii][Ll]|[Pp][Rr])|([Uu][Gg][Uu][Ss][Tt]|[Uu][Gg]))\b|\b[Ff]([Ee][Bb][Rr][Uu][Aa][Rr][Yy]|[Ee][Bb])\b
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "Y") (str.to_re "y"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "E") (str.to_re "e"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "L") (str.to_re "l")) (re.union (str.to_re "Y") (str.to_re "y"))))) (re.++ (re.union (re.++ (re.union (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "T") (str.to_re "t"))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "V") (str.to_re "v"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "C") (str.to_re "c")))) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "M") (str.to_re "m"))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "O") (str.to_re "o")))) (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "R") (str.to_re "r"))) (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (re.++ (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "H") (str.to_re "h"))) (str.to_re "Y") (str.to_re "y"))) (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "L") (str.to_re "l"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "G") (str.to_re "g")) (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "T") (str.to_re "t"))))) (re.++ (re.union (str.to_re "F") (str.to_re "f")) (str.to_re "\u{a}") (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "Y") (str.to_re "y"))) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "P") (str.to_re "p"))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "V") (str.to_re "v"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "C") (str.to_re "c"))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "T") (str.to_re "t")))))))
; User-Agent\x3a\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:as.starware.com\u{a}"))))
; /[A-F0-9]{8}(-[A-F0-9]{4}){3}-[A-F0-9]{12}.wipe$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 3 3) (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "A" "F") (re.range "0" "9"))))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.range "0" "9"))) re.allchar (str.to_re "wipe/Ui\u{a}")))))
(check-sat)

(exit)
