(declare-const X String)
; /filename=[^\n]*\x2eurl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".url/i\u{a}"))))
; www\x2Eyoogee\x2EcomserverHost\x3Aref\x3D\x25user\x5Fid
(assert (not (str.in_re X (str.to_re "www.yoogee.com\u{13}serverHost:ref=%user_id\u{a}"))))
; User-Agent\x3AUser-Agent\x3Awp-includes\x2Ftheme\x2Ephp\x3Fframe_ver2
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:wp-includes/theme.php?frame_ver2\u{a}")))
(check-sat)
