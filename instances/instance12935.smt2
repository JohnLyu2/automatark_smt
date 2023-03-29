(declare-const X String)
; /\/Java([0-9]{1,2})?\.jar\?java=[0-9]{2}/U
(assert (not (str.in_re X (re.++ (str.to_re "//Java") (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (str.to_re ".jar?java=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
; \b ?(a|A)ppoint(s|ing|ment(s)?|ed)?| ?(J|j)oin(s|ed|ing)| ?(R)?recruit(s|ed|ing(s)?)?| (H|h)(is|er)(on)? dut(y|ies)?| ?(R)?replace(s|d|ment)?| (H)?hire(s|d)?| ?(P|p)romot(ed|es|e|ing)?| ?(D|d)esignate(s|d)| (N)?names(d)?| (his|her)? (P|p)osition(ed|s)?| re(-)?join(ed|s)|(M|m)anagement Changes|(E|e)xecutive (C|c)hanges| reassumes position| has appointed| appointment of| was promoted to| has announced changes to| will be headed| will succeed| has succeeded| to name| has named| was promoted to| has hired| bec(a|o)me(s)?| (to|will) become| reassumes position| has been elevated| assumes the additional (role|responsibilit(ies|y))| has been elected| transferred| has been given the additional| in a short while| stepp(ed|ing) down| left the company| (has)? moved| (has)? retired| (has|he|she)? resign(s|ing|ed)| (D|d)eceased| ?(T|t)erminat(ed|s|ing)| ?(F|f)ire(s|d|ing)| left abruptly| stopped working| indict(ed|s)| in a short while| (has)? notified| will leave| left the| agreed to leave| (has been|has)? elected| resignation(s)?
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "a") (str.to_re "A")) (str.to_re "ppoint") (re.opt (re.union (str.to_re "s") (str.to_re "ing") (re.++ (str.to_re "ment") (re.opt (str.to_re "s"))) (str.to_re "ed")))) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "J") (str.to_re "j")) (str.to_re "oin") (re.union (str.to_re "s") (str.to_re "ed") (str.to_re "ing"))) (re.++ (re.opt (str.to_re " ")) (re.opt (str.to_re "R")) (str.to_re "recruit") (re.opt (re.union (str.to_re "s") (str.to_re "ed") (re.++ (str.to_re "ing") (re.opt (str.to_re "s")))))) (re.++ (str.to_re " ") (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "is") (str.to_re "er")) (re.opt (str.to_re "on")) (str.to_re " dut") (re.opt (re.union (str.to_re "y") (str.to_re "ies")))) (re.++ (re.opt (str.to_re " ")) (re.opt (str.to_re "R")) (str.to_re "replace") (re.opt (re.union (str.to_re "s") (str.to_re "d") (str.to_re "ment")))) (re.++ (str.to_re " ") (re.opt (str.to_re "H")) (str.to_re "hire") (re.opt (re.union (str.to_re "s") (str.to_re "d")))) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "P") (str.to_re "p")) (str.to_re "romot") (re.opt (re.union (str.to_re "ed") (str.to_re "es") (str.to_re "e") (str.to_re "ing")))) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "D") (str.to_re "d")) (str.to_re "esignate") (re.union (str.to_re "s") (str.to_re "d"))) (re.++ (str.to_re " ") (re.opt (str.to_re "N")) (str.to_re "names") (re.opt (str.to_re "d"))) (re.++ (str.to_re " ") (re.opt (re.++ (str.to_re "h") (re.union (str.to_re "is") (str.to_re "er")))) (str.to_re " ") (re.union (str.to_re "P") (str.to_re "p")) (str.to_re "osition") (re.opt (re.union (str.to_re "ed") (str.to_re "s")))) (re.++ (str.to_re " re") (re.opt (str.to_re "-")) (str.to_re "join") (re.union (str.to_re "ed") (str.to_re "s"))) (re.++ (re.union (str.to_re "M") (str.to_re "m")) (str.to_re "anagement Changes")) (re.++ (re.union (str.to_re "E") (str.to_re "e")) (str.to_re "xecutive ") (re.union (str.to_re "C") (str.to_re "c")) (str.to_re "hanges")) (str.to_re " reassumes position") (str.to_re " has appointed") (str.to_re " appointment of") (str.to_re " was promoted to") (str.to_re " has announced changes to") (str.to_re " will be headed") (str.to_re " will succeed") (str.to_re " has succeeded") (str.to_re " to name") (str.to_re " has named") (str.to_re " was promoted to") (str.to_re " has hired") (re.++ (str.to_re " bec") (re.union (str.to_re "a") (str.to_re "o")) (str.to_re "me") (re.opt (str.to_re "s"))) (re.++ (str.to_re " ") (re.union (str.to_re "to") (str.to_re "will")) (str.to_re " become")) (str.to_re " reassumes position") (str.to_re " has been elevated") (re.++ (str.to_re " assumes the additional r") (re.union (str.to_re "ole") (re.++ (str.to_re "esponsibilit") (re.union (str.to_re "ies") (str.to_re "y"))))) (str.to_re " has been elected") (str.to_re " transferred") (str.to_re " has been given the additional") (str.to_re " in a short while") (re.++ (str.to_re " stepp") (re.union (str.to_re "ed") (str.to_re "ing")) (str.to_re " down")) (str.to_re " left the company") (re.++ (str.to_re " ") (re.opt (str.to_re "has")) (str.to_re " moved")) (re.++ (str.to_re " ") (re.opt (str.to_re "has")) (str.to_re " retired")) (re.++ (str.to_re " ") (re.opt (re.union (str.to_re "has") (str.to_re "he") (str.to_re "she"))) (str.to_re " resign") (re.union (str.to_re "s") (str.to_re "ing") (str.to_re "ed"))) (re.++ (str.to_re " ") (re.union (str.to_re "D") (str.to_re "d")) (str.to_re "eceased")) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "T") (str.to_re "t")) (str.to_re "erminat") (re.union (str.to_re "ed") (str.to_re "s") (str.to_re "ing"))) (re.++ (re.opt (str.to_re " ")) (re.union (str.to_re "F") (str.to_re "f")) (str.to_re "ire") (re.union (str.to_re "s") (str.to_re "d") (str.to_re "ing"))) (str.to_re " left abruptly") (str.to_re " stopped working") (re.++ (str.to_re " indict") (re.union (str.to_re "ed") (str.to_re "s"))) (str.to_re " in a short while") (re.++ (str.to_re " ") (re.opt (str.to_re "has")) (str.to_re " notified")) (str.to_re " will leave") (str.to_re " left the") (str.to_re " agreed to leave") (re.++ (str.to_re " ") (re.opt (str.to_re "has been")) (str.to_re " elected")) (re.++ (str.to_re " resignation") (re.opt (str.to_re "s")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\x2emkv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mkv/i\u{a}")))))
(check-sat)

(exit)
