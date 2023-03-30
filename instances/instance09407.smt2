(declare-const X String)
; www\x2Eserverlogic3\x2Ecom\d+ToolBar.*Host\x3AHWAEUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to_re "ToolBar") (re.* re.allchar) (str.to_re "Host:HWAEUser-Agent:\u{a}"))))
; ((A[FGIKLMNPRSUZ]S?X?|DAL?L?A?E?S?|DE|DE[LNRST]L?A?E?H?I?O?S?|DI[AE]?|DOS?|DU|EIT?N?E?|ELS?|EN|ETT?|HAI?|HE[NT]|HIN?A?I?N?R?|HOI|IL|IM|ISA|KA|KE|LAS|LES?|LH?IS?|LOS?|LO?U|MA?C|N[AIY]|O[IP]|SI|T[AEO]N?R?|U[MN][AEOS]?|VAN|VE[LR]|VO[MN]|Y[ENR]|ZU[MR]?) )?((LAS?|LOS?|DEN?R?|ZU) )?[A-Z0/'\.-]+( |$)(SR|JR|II+V?|VI+|[1-9][STRDH]+)?
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "Z")) (re.opt (str.to_re "S")) (re.opt (str.to_re "X"))) (re.++ (str.to_re "DA") (re.opt (str.to_re "L")) (re.opt (str.to_re "L")) (re.opt (str.to_re "A")) (re.opt (str.to_re "E")) (re.opt (str.to_re "S"))) (str.to_re "DE") (re.++ (str.to_re "DE") (re.union (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T")) (re.opt (str.to_re "L")) (re.opt (str.to_re "A")) (re.opt (str.to_re "E")) (re.opt (str.to_re "H")) (re.opt (str.to_re "I")) (re.opt (str.to_re "O")) (re.opt (str.to_re "S"))) (re.++ (str.to_re "DI") (re.opt (re.union (str.to_re "A") (str.to_re "E")))) (re.++ (str.to_re "DO") (re.opt (str.to_re "S"))) (str.to_re "DU") (re.++ (str.to_re "EI") (re.opt (str.to_re "T")) (re.opt (str.to_re "N")) (re.opt (str.to_re "E"))) (re.++ (str.to_re "EL") (re.opt (str.to_re "S"))) (str.to_re "EN") (re.++ (str.to_re "ET") (re.opt (str.to_re "T"))) (re.++ (str.to_re "HA") (re.opt (str.to_re "I"))) (re.++ (str.to_re "HE") (re.union (str.to_re "N") (str.to_re "T"))) (re.++ (str.to_re "HI") (re.opt (str.to_re "N")) (re.opt (str.to_re "A")) (re.opt (str.to_re "I")) (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (str.to_re "HOI") (str.to_re "IL") (str.to_re "IM") (str.to_re "ISA") (str.to_re "KA") (str.to_re "KE") (str.to_re "LAS") (re.++ (str.to_re "LE") (re.opt (str.to_re "S"))) (re.++ (str.to_re "L") (re.opt (str.to_re "H")) (str.to_re "I") (re.opt (str.to_re "S"))) (re.++ (str.to_re "LO") (re.opt (str.to_re "S"))) (re.++ (str.to_re "L") (re.opt (str.to_re "O")) (str.to_re "U")) (re.++ (str.to_re "M") (re.opt (str.to_re "A")) (str.to_re "C")) (re.++ (str.to_re "N") (re.union (str.to_re "A") (str.to_re "I") (str.to_re "Y"))) (re.++ (str.to_re "O") (re.union (str.to_re "I") (str.to_re "P"))) (str.to_re "SI") (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "O")) (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (re.++ (str.to_re "U") (re.union (str.to_re "M") (str.to_re "N")) (re.opt (re.union (str.to_re "A") (str.to_re "E") (str.to_re "O") (str.to_re "S")))) (str.to_re "VAN") (re.++ (str.to_re "VE") (re.union (str.to_re "L") (str.to_re "R"))) (re.++ (str.to_re "VO") (re.union (str.to_re "M") (str.to_re "N"))) (re.++ (str.to_re "Y") (re.union (str.to_re "E") (str.to_re "N") (str.to_re "R"))) (re.++ (str.to_re "ZU") (re.opt (re.union (str.to_re "M") (str.to_re "R"))))) (str.to_re " "))) (re.opt (re.++ (re.union (re.++ (str.to_re "LA") (re.opt (str.to_re "S"))) (re.++ (str.to_re "LO") (re.opt (str.to_re "S"))) (re.++ (str.to_re "DE") (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (str.to_re "ZU")) (str.to_re " "))) (re.+ (re.union (re.range "A" "Z") (str.to_re "0") (str.to_re "/") (str.to_re "'") (str.to_re ".") (str.to_re "-"))) (str.to_re " ") (re.opt (re.union (str.to_re "SR") (str.to_re "JR") (re.++ (str.to_re "I") (re.+ (str.to_re "I")) (re.opt (str.to_re "V"))) (re.++ (str.to_re "V") (re.+ (str.to_re "I"))) (re.++ (re.range "1" "9") (re.+ (re.union (str.to_re "S") (str.to_re "T") (str.to_re "R") (str.to_re "D") (str.to_re "H")))))) (str.to_re "\u{a}"))))
; ^(((([\*]{1}){1})|((\*\/){0,1}(([0-9]{1}){1}|(([1-5]{1}){1}([0-9]{1}){1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([0-9]{1}){1}|(([1]{1}){1}([0-9]{1}){1}){1}|([2]{1}){1}([0-3]{1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([1-9]{1}){1}|(([1-2]{1}){1}([0-9]{1}){1}){1}|([3]{1}){1}([0-1]{1}){1}))) ((([\*]{1}){1})|((\*\/){0,1}(([1-9]{1}){1}|(([1-2]{1}){1}([0-9]{1}){1}){1}|([3]{1}){1}([0-1]{1}){1}))|(jan|feb|mar|apr|may|jun|jul|aug|sep|okt|nov|dec)) ((([\*]{1}){1})|((\*\/){0,1}(([0-7]{1}){1}))|(sun|mon|tue|wed|thu|fri|sat)))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "5"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9")))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "1"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "3"))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "3"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "1"))))))) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "1" "2"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "3"))) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "1")))))) (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "okt") (str.to_re "nov") (str.to_re "dec")) (str.to_re " ") (re.union ((_ re.loop 1 1) ((_ re.loop 1 1) (str.to_re "*"))) (re.++ (re.opt (str.to_re "*/")) ((_ re.loop 1 1) ((_ re.loop 1 1) (re.range "0" "7")))) (str.to_re "sun") (str.to_re "mon") (str.to_re "tue") (str.to_re "wed") (str.to_re "thu") (str.to_re "fri") (str.to_re "sat")))))
; HANDY\s+newsSoftActivitypassword\x3B1\x3BOptixtv\x2E180solutions\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "HANDY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "newsSoftActivity\u{13}password;1;Optixtv.180solutions.com\u{a}")))))
(check-sat)

(exit)
