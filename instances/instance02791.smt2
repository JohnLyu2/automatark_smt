(declare-const X String)
; ^(900[0-9][0-9]|902[0-9][0-9]|9030[1-5]|9040[1-5]|9050[1-6]|9060[1-6]|90608|90631|90638|90639|90640|90650|90660|90670|90680|9070[1-4]|90706|90710|90712|90713|90715|90716|90717|90723|9073[1-3]|9074[4-6]|90747|90755|9080[2-8]|90810|9081[3-5]|90822|9083[1-2]|90840|90846|910[0-4][0-9]|91101|9110[3-8]|9112[5-6]|9120[1-8]|91214|913[0-6][0-9]|91372|91381|91384|9140[1-3|5-6]|91411|91423|91436|9150[1-2|4|6]|91510|91523|9160[1-2|4-8]|91702|91706|91711|9172[2-4]|9173[1-3]|9174[0-1|4-6|8]|9175[0|4-6]|9176[5-8]|9177[0|3|5-6]|9178[0-1|3]|91789|92621|93510|93523|9353[2|4-6]|93543|93544|9355[0-3]|93563|93591)(-[0-9]{4})?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{a}9") (re.union (re.++ (str.to_re "00") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "02") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "030") (re.range "1" "5")) (re.++ (str.to_re "040") (re.range "1" "5")) (re.++ (str.to_re "050") (re.range "1" "6")) (re.++ (str.to_re "060") (re.range "1" "6")) (str.to_re "0608") (str.to_re "0631") (str.to_re "0638") (str.to_re "0639") (str.to_re "0640") (str.to_re "0650") (str.to_re "0660") (str.to_re "0670") (str.to_re "0680") (re.++ (str.to_re "070") (re.range "1" "4")) (str.to_re "0706") (str.to_re "0710") (str.to_re "0712") (str.to_re "0713") (str.to_re "0715") (str.to_re "0716") (str.to_re "0717") (str.to_re "0723") (re.++ (str.to_re "073") (re.range "1" "3")) (re.++ (str.to_re "074") (re.range "4" "6")) (str.to_re "0747") (str.to_re "0755") (re.++ (str.to_re "080") (re.range "2" "8")) (str.to_re "0810") (re.++ (str.to_re "081") (re.range "3" "5")) (str.to_re "0822") (re.++ (str.to_re "083") (re.range "1" "2")) (str.to_re "0840") (str.to_re "0846") (re.++ (str.to_re "10") (re.range "0" "4") (re.range "0" "9")) (str.to_re "1101") (re.++ (str.to_re "110") (re.range "3" "8")) (re.++ (str.to_re "112") (re.range "5" "6")) (re.++ (str.to_re "120") (re.range "1" "8")) (str.to_re "1214") (re.++ (str.to_re "13") (re.range "0" "6") (re.range "0" "9")) (str.to_re "1372") (str.to_re "1381") (str.to_re "1384") (re.++ (str.to_re "140") (re.union (re.range "1" "3") (str.to_re "|") (re.range "5" "6"))) (str.to_re "1411") (str.to_re "1423") (str.to_re "1436") (re.++ (str.to_re "150") (re.union (re.range "1" "2") (str.to_re "|") (str.to_re "4") (str.to_re "6"))) (str.to_re "1510") (str.to_re "1523") (re.++ (str.to_re "160") (re.union (re.range "1" "2") (str.to_re "|") (re.range "4" "8"))) (str.to_re "1702") (str.to_re "1706") (str.to_re "1711") (re.++ (str.to_re "172") (re.range "2" "4")) (re.++ (str.to_re "173") (re.range "1" "3")) (re.++ (str.to_re "174") (re.union (re.range "0" "1") (str.to_re "|") (re.range "4" "6") (str.to_re "8"))) (re.++ (str.to_re "175") (re.union (str.to_re "0") (str.to_re "|") (re.range "4" "6"))) (re.++ (str.to_re "176") (re.range "5" "8")) (re.++ (str.to_re "177") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "3") (re.range "5" "6"))) (re.++ (str.to_re "178") (re.union (re.range "0" "1") (str.to_re "|") (str.to_re "3"))) (str.to_re "1789") (str.to_re "2621") (str.to_re "3510") (str.to_re "3523") (re.++ (str.to_re "353") (re.union (str.to_re "2") (str.to_re "|") (re.range "4" "6"))) (str.to_re "3543") (str.to_re "3544") (re.++ (str.to_re "355") (re.range "0" "3")) (str.to_re "3563") (str.to_re "3591"))))))
(check-sat)

(exit)
